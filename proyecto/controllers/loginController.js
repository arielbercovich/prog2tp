let db = require('../db/usuario.js')
let fav = require('../db/productos.js');
let loginController = {
    index: function(req, res){
        return res.render('login')
    },
    profile: function(req,res){
        return res.render('profile', {nombre: db[0].nombre, email: db[0].email, clave: db[0].contraseña, cumple: db[0].fechaDeNacimiento, dni: db[0].dni, foto: db[0].foto, defensores: fav.defensores})
    },
    edit: function(req, res){
        return res.render('profile-edit')
    }
}
module.exports = loginController