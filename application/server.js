'use strict';

const mysql = require('mysql');
const mysqlConnection = mysql.createConnection({
  host: 'sql-server',
  user: 'root',
  password: 'password',
  database: 'testdb'
});

mysqlConnection.connect((err) => {
  if (err) throw err;
  console.log('Connected!');
});


const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/tasks', (req, res) => {
  mysqlConnection.query('SELECT * FROM Tasks;', (err, rows, fields)=>{
      if(!err){
        console.log(rows);
      }else{
        console.log('error getting rows');
      }
  }); 
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);