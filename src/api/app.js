const path = require('path');
const createError = require('http-errors');
const express = require('express');
const logger = require('morgan');

const app = express();

app.get('/', function(req, res) {
    res.sendFile(path.join(__dirname + '/public/index.html'));
});

app.listen(8000, () => console.log('listening on port 8000'));

module.exports = app;