let db = require('../database/models')
let op = db.Sequelize.Op;
let bcrypt= require("bcryptjs");



let registroController = {
    index: function(req, res){
        return res.render('register')
    },
    store: function(req, res){
        let form = req.body
        let nuevo = {
            email: form.email,
            usuario: form.usuario,
            contrasena: bcrypt.hashSync(form.contrasena),
            fechaNacimiento: form.fechaNacimiento,
            createdAt: new Date()
        }
        db.Usuario.create(nuevo)
            .then(function(newUser){
                console.log(newUser);
                return res.redirect('/')
            })
    }

}

module.exports = registroController;