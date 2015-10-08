var express = require('express');
var path = require('path');
var bodyParser = require('body-parser');

var users = require('./routes/users');
var auth = require('./routes/auth'); 

var app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', users);
app.use('/', auth); 

module.exports = app;
