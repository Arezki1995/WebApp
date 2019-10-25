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

app.use('/assets', express.static('assets'));


app.set('view engine', 'pug');

app.get('/', (req, res) => {
    
    mysqlConnection.query( 'SELECT * FROM News;', (err, rows)=>{
      if (err) throw err;   
      res.render('home', {news:rows});  
    });
 
});



app.get('/About', (req, res) => {
  mysqlConnection.query('SELECT * FROM `WebsiteData` WHERE `property` ="about";', (err, rows, fields)=>{
    if(!err){
      res.render('about',{aboutRow:rows[0]});   
    }else{
      console.log('error getting about information');
    }

});
         
});



app.get('/Products', (req, res) => {
  mysqlConnection.query('SELECT * FROM Products;', (err, rows, fields)=>{
    if(!err){

      res.render('products', {products:rows});  
    }else{
      console.log('error getting products');
    }

});  
});


app.get('/Contact', (req, res) => {
  res.render('contact');  
});


app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);