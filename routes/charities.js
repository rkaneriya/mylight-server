var express = require('express');
var router = express.Router();
var request = require('request');
var _ = require('underscore'); 
var anyDB = require('any-db');
var db = anyDB.createConnection('postgres://localhost:5432/mylight');
var jwt = require('jsonwebtoken'); 


router.get('/charity/:ein', function(req, res) {
    var ein = parseInt(req.params.ein);
    var sql = 'SELECT * FROM charities WHERE ein = $1';
    var q = db.query(sql, [ein], function(error, result) {
        res.json(result.rows[0]);
    });
});

module.exports = router;
