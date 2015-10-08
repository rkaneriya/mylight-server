var express = require('express');
var router = express.Router();

var anyDB = require('any-db');
var conn = anyDB.createConnection('postgres://localhost:5432/jlo');

router.get('/event', function(req, res) {
	var sql = 'SELECT * FROM event';
	var q = conn.query(sql, function(error, result) {
		res.json(result.rows);
	});
});

router.post('/event', function(req, res) { 
	var obj = req.body;
	var id = Math.abs((new Date()).valueOf() & 0xffffffff);
	var sql = 'INSERT INTO event (eid, name, description, type ,venue, city, country, start_date, end_date) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)';
	conn.query(sql, [id, obj.name, obj.description, obj.type, obj.venue, obj.city, obj.country, obj.start_date, obj.end_date], function(error, result) {
		res.json({ eid: id });
	});
}); 

router.get('/event/:eid', function(req, res) {
	var eid = parseInt(req.params.eid);
	var sql = 'SELECT * FROM event WHERE eid = $1';
	var q = conn.query(sql, [eid], function(error, result) {
		res.json(result.rows[0]);
	});
});

router.put('/event/:eid', function(req, res){
    var eid = parseInt(req.params.eid);
    var obj = req.body;

	obj.eid = eid; 
    var sql = 'UPDATE event SET name = $1, description = $2, type = $3, venue = $4, city = $5, country = $6, start_date = $7, end_date = $8 WHERE eid = $9';
    var q = conn.query(sql, [obj.name, obj.description, obj.type, obj.venue, obj.city, obj.country, obj.start_date, obj.end_date, eid], function(error, result){
        res.json(obj);
    });
});

router.delete('/event/:eid', function(req, res){
	var eid = parseInt(req.params.eid); 
	var sql = 'DELETE FROM event WHERE eid = $1';
	conn.query(sql, [eid], function(error, result) {
		res.json({ eid: eid });
	});
}); 


module.exports = router;
