let db = require('../db/usuario.js')
let fav = require('../db/productos.js');
let db = require('../database/models')
let op = db.Sequelize.Op;

let loginController = {
    index: function(req, res){
        // si el user esta logueado, redirigirlo a home
        if (req.session.user != undefined){
            return res.redirect ('/')
        } 
        else{
            return res.render('login')
        }
        // return res.render('login')
    },
    // processLogin: function (req, res){
        // tengo qur buscsar los datos de la db 
        //ponerlos en la session


        // return res.send(req.session){
            // email: 'traer de base de datos',
            // userName: 'traer de base de datos'
        // }
        //y si el usuario quiere, agregar la cookie para que lo recuerde

    // },
    profile: function(req,res){
        return res.render('profile', {nombre: db[0].nombre, email: db[0].email, clave: db[0].contraseña, cumple: db[0].fechaDeNacimiento, dni: db[0].dni, foto: db[0].foto, defensores: fav.defensores})
    },
    edit: function(req, res){
        return res.render('profile-edit')
    },
    show: function(req, res){
        //buscar datos de db
        //ponerlos en sesion
        //agregar cookie para que lo recuerde
    }

}
module.exports = loginController