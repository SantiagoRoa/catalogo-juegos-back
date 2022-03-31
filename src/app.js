const express = require('express');
const path = require('path');
const morgan = require('morgan');
const mysql = require('mysql2');
const myConnection = require('express-myconnection');
var cors = require('cors');

const app = express();

const router = require('./routes/routes');

const {
    urlencoded
} = require('express');

app.set('port', process.env.PORT || 3000);
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'pages'));

app.use(morgan('dev'));
app.use(cors());
app.use(myConnection(mysql, { //Conexión
    host: 'localhost',
    user: 'root',
    password: 'Passw0rd',
    port: 3306,
    database: 'catalogo'
}, 'single'))
app.use(express.urlencoded({
    extended: false
}));

app.use('/', router);
app.use('/juegos', router);

app.use(express.static(path.join(__dirname, 'public')));

app.listen(app.get('port'));