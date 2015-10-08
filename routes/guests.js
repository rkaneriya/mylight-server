var express = require('express'); 
var router = express.Router();
var request = require('request'); 
var _ = require('underscore'); 
var anyDB = require('any-db');
var conn = anyDB.createConnection('postgres://localhost:5432/jlo');
var API_URL = require('../config/config').API_URL; 

// get list of pids from guest table, call /GET/person with that array, get back an array of lead objs from marketo, sent back in 'guests' field 
router.get('/event/:eid/guest', function(req, res) { 
	var eid = parseInt(req.params.eid); 
	var sql = 'SELECT * FROM guest WHERE eid = $1'
	var obj = {}; 

	var q = conn.query(sql, [eid], function(error, result) { 
		var pids = _.reduce(result.rows, function(m, v) { 
			m[v.pid] = { 
				registered: v.registered,
				approved: v.approved,
				attended: v.attended 
			}; 
			return m; 
		}, {});

		request({ 
		    method: 'GET',
		    uri: (API_URL + '/person?ids=' + _.keys(pids).join()),
		}, function(err, res2, body) { 
		    if (err) throw err; 
		    
		    var guests = _.map(JSON.parse(body), function(guest, i) { 
		    	guest.registered = pids[guest.pid].registered; 
		    	guest.attended = pids[guest.pid].attended; 
		    	guest.approved = pids[guest.pid].approved;

		    	return guest; 
		    }); 

		    obj.guests = guests;  
			sql = 'SELECT * FROM event WHERE eid = $1'; 
			var q2 = conn.query(sql, [eid], function(error2, result2) { 
				obj.event = result2.rows[0];
				res.json(obj);  
			}); 	
		});
	}); 
}); 

router.get('/event/:eid/guest/:pid', function(req, res) { 
	var eid = parseInt(req.params.eid); 
	var pid = parseInt(req.params.pid); 

	var sql = 'SELECT * FROM guest WHERE eid = $1 AND pid = $2'; 
	var obj = {}; 

	var q = conn.query(sql, [eid, pid], function(error, result) { 
		obj.guest = result.rows[0];
		sql = 'SELECT * FROM event WHERE eid = $1'; 
	
		var q2 = conn.query(sql, [eid], function(error2, result2) { 
			obj.event = result2.rows[0]; 
			res.json(obj); 
		}); 	
	}); 
}); 

router.post('/event/:eid/guest', function(req, res) { 
	var eid = parseInt(req.params.eid); 
	var obj = req.body;
	if (obj.length > 1) { 
		var values = _.map(obj, function(o) { 
			var temp = [eid, o.pid, o.attended, o.registered, o.approved]; 
			return '(' + temp.join() + ')'; 
		}); 

		var sql = 'INSERT INTO guest (eid, pid, attended, registered, approved) VALUES ' + values.join(); 
		conn.query(sql, function(error, result) {
			res.json({ eid: eid });
		});		
	} else { 
		var sql = 'INSERT INTO guest (eid, pid, attended, registered, approved) VALUES ($1, $2, $3, $4, $5)';
		conn.query(sql, [eid, obj.pid, obj.attended, obj.registered, obj.approved], function(error, result) {
			res.json({ eid: eid, pid: obj.pid });
		});	
	}
});

router.put('/event/:eid/guest/:pid', function(req, res){
    var eid = parseInt(req.params.eid);
    var pid = parseInt(req.params.pid); 
    var obj = req.body;
    var sql = 'UPDATE guest SET attended = $1, registered = $2, approved = $3 WHERE eid = $4 and pid = $5';
   
    var q = conn.query(sql, [obj.attended, obj.registered, obj.approved, eid, pid], function(error, result){
        res.json({ eid: eid, pid: pid });
    });
}); 

router.delete('/event/:eid/guest', function(req, res){
    var eid = parseInt(req.params.eid);
    var sql = 'DELETE FROM guest WHERE eid = $1';
   
    conn.query(sql, [eid], function(error, result) {
        res.json({ eid: eid });
    });
});

router.delete('/event/:eid/guest/:pid', function(req, res) { 
	var eid = parseInt(req.params.eid) 
	var pid = parseInt(req.params.pid); 

    var sql = 'DELETE FROM guest WHERE eid = $1 AND pid = $2';
    conn.query(sql, [eid, pid], function(error, result) {
        res.json({ eid: eid, pid: pid  });
    });
}); 

module.exports = router;