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
            contrasena: bcrypt.hashSync(form.contrasena, 10),
            fechaNacimiento: form.fechaNacimiento,
            createdAt: new Date()
        }
            // db.Usuario.create(nuevo)
            //     .then(function(newUser){
            //         console.log(newUser);
            //         return res.redirect('/')
            //     })
        db.Usuario.findOne({
            where: [
                {email: form.email}
            ]
            .then(function(email){
                if (email == null){
                    db.Usuario.create(nuevo);
                    res.redirect('/')
                }
                else{
                    res.send('El correo que ingresaste ya fue registrado, intenta con otro o inicia sesión con tu usuario :)')
                }
            })
            .catch(function(error){
                console.log(error)
            })
        })
    }

}

module.exports = registroController;