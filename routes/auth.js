var express = require('express');
var router = express.Router();
var request = require('request');
var _ = require('underscore'); 
var anyDB = require('any-db');
var db = anyDB.createConnection('postgres://localhost:5432/mylight');

router.post('/auth', function(req, res) { 
    var obj = req.body; 
    var record = [obj.username, obj.password_hash]; 
    var sql = 'SELECT * FROM users WHERE username = $1 AND password_hash = $2';
    db.query(sql, record, function(error, result) {
        var r = result.rows[0]; 
        if (r) { 
            var sql = 'UPDATE auth SET session_id = $2 WHERE username = $1'; 
            db.query(sql, [r.username, obj.session_id], function(error, result) { 
                var blob = { status: true }; 
                blob.personal_info = r; 
                blob.auth = obj.session_id + 1; 

                var sql = 'SELECT * FROM notifications WHERE uid = $1';
                db.query(sql, [r.uid], function(error, result) {
                    blob.notifications = (result.rows[0]) ? result.rows[0] : []; 

                    var sql = 'SELECT * FROM friends WHERE uid_1 = $1';
                    db.query(sql, [r.uid], function(error, result) {
                        blob.friends = (result.rows[0]) ? result.rows[0] : [];

                        var sql = 'SELECT * FROM recommendations WHERE uid = $1';
                        db.query(sql, [r.uid], function(error, result) {
                            blob.recommendations = (result.rows[0]) ? result.rows[0] : [];  
                            
                            res.json(blob); 
                        }); 
                    }); 
                }); 
            }); 
        } else { 
            res.json({ status: false });
        }
    });
}); 

router.post('/auth/:username', function(req, res) { 
    var username = req.params.username;
    var obj = req.body; 

    var sql = 'SELECT * FROM auth WHERE username = $1';
    db.query(sql, [username], function(error, result) {
        var r = result.rows[0]; 
        if (r && r.session_id == obj.session_id) {
            res.json({ auth: true }); 
        } else { 
            res.json({ auth: false }); 
        }
    }); 
}); 

module.exports = router;
