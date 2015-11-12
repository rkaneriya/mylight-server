var express = require('express');
var router = express.Router();
var request = require('request');
var _ = require('underscore'); 
var anyDB = require('any-db');
var db = anyDB.createConnection('postgres://localhost:5432/mylight');
var jwt = require('jsonwebtoken'); 
var raccoon = require('raccoon'); 
var config = require('../config/config'); 

raccoon.connect(config.REDIS_PORT, config.REDIS_URL); 


router.get('/charity/:ein', function(req, res) {
    var ein = parseInt(req.params.ein);
    var uid = req.query.uid; 
    var sql = 'SELECT * FROM charities WHERE ein = $1';
    var q = db.query(sql, [ein], function(error, result) {
        var blob = result.rows[0];
        raccoon.allLikedFor(uid, function(favs) { 
            blob.favorite = _.contains(favs, req.params.ein); 
            console.log(blob); 
            res.json(blob); 
        }); 
    });
});

module.exports = router;
