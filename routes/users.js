var express = require('express');
var router = express.Router();
var request = require('request');
var _ = require('underscore'); 
var anyDB = require('any-db');
var db = anyDB.createConnection('postgres://localhost:5432/mylight');
var jwt = require('jsonwebtoken'); 

router.get('/user', function(req, res) {
    var sql = 'SELECT * FROM users';
    var q = db.query(sql, function(error, result) {
        res.json(result.rows);
    });
});

router.get('/user/:uid', function(req, res) {
    var uid = parseInt(req.params.uid);
    var sql = 'SELECT * FROM users WHERE uid = $1';
    var q = db.query(sql, [uid], function(error, result) {
        res.json(result.rows[0]);
    });
});

router.post('/user', function(req, res) { 
    var obj = req.body; 
    var uid = Math.abs((new Date()).valueOf() & 0xffffffff);
    var record = [uid, obj.first_name, obj.last_name, obj.username, obj.email, obj.password_hash, obj.ar, obj.bh, obj.ed, obj.eh, obj.en, obj.he, obj.hu, obj.intl, obj.mu, obj.pu, obj.re, obj.un]; 
    var sql = 'INSERT INTO users (uid, first_name, last_name, username, email, password_hash, ar, bh, ed, eh, en, he, hu, intl, mu, pu, re, un) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18)';
    db.query(sql, record, function(err, result) {
        var body = { status: true, uid: uid, username: true, email: true }; 

        if (err) { 
            body.username = !err.constraint.includes('username'); 
            body.email = !err.constraint.includes('email'); 
            body.status = false; 
        } else { 
            var token = jwt.sign({ uid: uid }, 'secretkey'); 
            body.jwt = token; 
        }

        res.json(body);
    });
}); 

// requires all the attributes to be there (need to perform validation on this)
router.put('/user/:uid', function(req, res) {
    var uid = parseInt(req.params.uid);
    var obj = req.body.personal_info;
    obj.uid = uid; 
    var record = [uid, obj.first_name, obj.last_name, obj.username, obj.email, obj.password_hash, obj.ar, obj.bh, obj.ed, obj.eh, obj.en, obj.he, obj.hu, obj.intl, obj.mu, obj.pu, obj.re, obj.un]; 
    var sql = 'UPDATE users SET first_name = $2, last_name = $3, username = $4, email = $5, password_hash = $6, ar = $7, bh = $8, ed = $9, eh = $10, en = $11, he = $12, hu = $13, intl = $14, mu = $15, pu = $16, re = $17, un = $18 WHERE uid = $1';
    var q = db.query(sql, record, function(error, result) {
        res.json(obj);
    });
});

router.delete('/user/:uid', function(req, res) {
    var uid = parseInt(req.params.uid); 
    var sql = 'DELETE FROM users WHERE uid = $1';
    db.query(sql, [uid], function(error, result) {
        res.json({ uid: uid });
    });
}); 

router.delete('/user', function(req, res) {
    var sql = 'DELETE FROM users';
    db.query(sql, [], function(error, result) {
        res.json({});
    });
}); 

/* --- USER FAVORITES --- */ 

router.get('/user/:uid/favorites', function(req, res) { 
    var uid = parseInt(req.params.uid); 
    var sql = 'SELECT * FROM users WHERE uid = $1';
    var q = db.query(sql, [uid], function(error, result) {
        res.json({ favorites: result.rows[0].favorites });
    });
}); 

router.post('/user/:uid/favorites', function(req, res) { 
    var obj = req.body; 
    var uid = parseInt(req.params.uid); 
    var record = [uid]; 

    var sql = 'UPDATE users SET favorites = array_cat(favorites, ARRAY[' + obj.favorites + ']) WHERE uid = $1';
    db.query(sql, record, function(error, result) {
        res.json({ uid: uid });
    });
}); 

router.delete('/user/:uid/favorites/:ein', function(req, res) {
    var uid = parseInt(req.params.uid); 
    var ein = parseInt(req.params.ein); 
    var sql = 'UPDATE users SET favorites = array_remove(favorites, $2) WHERE uid = $1';
    db.query(sql, [uid, ein], function(error, result) {
        res.json({ uid: uid });
    });
}); 

router.delete('/user/:uid/favorites', function(req, res) {
    var uid = parseInt(req.params.uid); 
    var sql = 'UPDATE users SET favorites = null WHERE uid = $1';
    db.query(sql, [uid], function(error, result) {
        res.json({ uid: uid });
    });
}); 

module.exports = router;
