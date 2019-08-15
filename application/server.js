'use strict';


const mysql = require('mysql');
const mysqlConnection = mysql.createConnection({
  //host: 'sql-server',
  host: 'localhost',
  user: 'root',
  password: 'password',
  database: 'testdb'
});

mysqlConnection.connect((err) => {
  if (err) throw err;
  console.log('Connected!');
});


const express = require('express');
const path = require('path');
// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();

app.set('views',path.join(__dirname, 'views'));
app.set('view engine', 'pug');

app.get('/', (req, res) => {

  
  
  mysqlConnection.query('SELECT * FROM Tasks;', (err, rows, fields)=>{
      if(!err){

        var nb =rows.length
        res.render('index', {nb_tasks:nb, tasks:rows});  
      }else{
        console.log('error getting tasks');
      }


  });
  
  

});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);