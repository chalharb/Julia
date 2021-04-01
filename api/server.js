const express = require('express')
const app = express()
 
app.get('/', function (req, res) {
  res.send(`Running our docker app in the ${process.env.NODE_ENV} environment`)
})
 
app.listen(3000)