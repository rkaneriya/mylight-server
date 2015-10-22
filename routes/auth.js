var express = require('express');
var router = express.Router();
var request = require('request');
var _ = require('underscore'); 
var anyDB = require('any-db');
var db = anyDB.createConnection('postgres://localhost:5432/mylight');
var jwt = require('jsonwebtoken'); 
var categories = require('../utils/categories').lower; 
var cheerio = require('cheerio'); 
var scrape = require('html-metadata'); 

router.post('/auth', function(req, res) { 
    var obj = req.body; 
    var record = [obj.username, obj.password_hash]; 
    var sql = 'SELECT * FROM users WHERE username = $1 AND password_hash = $2';
    db.query(sql, record, function(error, result) {
        var r = result.rows[0]; 
        if (r) { 
            var token = jwt.sign({ uid: r.uid }, 'secretkey'); 
            res.json({ status: true, jwt: token }); 
        } else { 
            res.json({ status: false });
        }
    });
}); 

router.get('/load', function(req, res) { 
    var token = req.query.token; 
    var payload = jwt.verify(token, 'secretkey'); 

    var sql = 'SELECT * FROM users WHERE uid = $1'; 
    db.query(sql, [payload.uid], function(error, result) { 
        var r = result.rows[0]; 
        if (r) { 
            var blob = { status: true }; 
            blob.personal_info = r; 

            var sql = 'SELECT * FROM notifications WHERE uid = $1';
            db.query(sql, [r.uid], function(error, result) {
                blob.notifications = (result.rows[0]) ? result.rows[0] : []; 

                var sql = 'SELECT * FROM friends WHERE uid_1 = $1';
                db.query(sql, [r.uid], function(error, result) {
                    blob.friends = (result.rows[0]) ? result.rows[0] : [];

                    var prefs = _.pick(blob.personal_info, _.keys(categories)); 
                    var str = '(';
                    _.each(prefs, function(val, key, list) { 
                        if (val) { 
                            str += 'ntmaj12 = \'' + categories[key] + '\' or '; 
                        }
                    }); 
                    str += ' state = \'blah\')'; 
                   
                    // var sql = 'select uid, recommendations.ein, type, name, ntmaj10, state from recommendations inner join charities on recommendations.ein = cast(charities.ein as integer) where uid = $1';
                    var sql = 'select ein, name, ntmaj12, city, state, totrev2 from charities where ' + str;
                    db.query(sql, [], function(error, result) {
                        var results = (result.rows[0]) ? _.last(_.sortBy(result.rows, 'totrev2'), 10) : [];

                        var asyncFunc = _.after(results.length, function(list) {
                            console.log(list.length);  
                            blob.recommendations = list; 
                            res.json(blob); 
                        });  

                        var newResults = _.map(results, function(r, key, list) { 
                            var url = 'http://www.google.com/search?q=' + r.name.replace(' ', '+') + '&btnI'; 
                            scrape(url, function(err, meta) { 
                                if (!err) { 
                                    r.description = (meta.general.description) ? meta.general.description : meta.general.title;   
                                } else { 
                                    r.description = "(No description available)"; 
                                }
                                asyncFunc(list); 
                                return r; 
                            }); 
                        }); 

                        // blob.recommendations = results; // assign the results here                         
                        // res.json(blob); 
                    }); 
                }); 
            }); 
        } else { 
            res.json({ status: false });
        }
    }); 
}); 

module.exports = router;
