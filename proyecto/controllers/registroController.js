const db = require('../database/models');
let db = require('../database/models')
let op = db.Sequelize.Op;



let registroController = {
    index: function(req, res){
        return res.render('register')
    },
    store: function(req, res){
        let form = req.body
        let usuario = {
            email: form.email,
            nombre: form.user,
            contrasena: form.contrasena,
        }
        db.Usuario.create(usuario)
            .then(function(usuarioCreado) {
                return res.redirect('/')
            })
            .catch(function(error){
                console.log(error)
            })
    }

}

module.exports = registroController;