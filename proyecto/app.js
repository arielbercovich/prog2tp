var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
let registroRouter = require('./routes/registro');
let loginRouter = require('./routes/login');
let productosRouter = require('./routes/productos');
let session = require('express-session');
// let profileRouter = require('./routes/profile');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use(session(
  {
    secret: 'muchachos', // texto para armar el algoritmo
    saveUninitialized: true,
    resave: false,

  }
));

// pasar datos de session a las vistas. Un codigo que se ejecute todo el tiempo. Usaremos un middleware de apps
app.use(function(req, res, next){
  if(req.session.user != undefined){
    res.locals.user = req.session.user
    return next();
  }
  return next(); //sirve para continuar con el codigo y que no se frene con la funcion
})



app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/registro', registroRouter);
app.use('/login', loginRouter);
app.use('/productos', productosRouter);
app.use('/profile', loginRouter);
// app.use('/profile', profileRouter);
// app.post('/formulario', (req, res)=>{
//   usuario = {
//     email: req.body.email,
//     usuario: req.body.usuario,
//     contrasena: req.body.contrasena,
//     fechaNacimiento: req.body.fechaNacimiento,
//     nroDocumento: req.body.nroDocumento,
//     fotoPerfil: req.body.fotoPerfil
//   }
// })


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
