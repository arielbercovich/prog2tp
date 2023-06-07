let db = require('../database/models')
// let op = db.Sequelize.Op;
let bcrypt= require("bcryptjs");



let registroController = {
    index: function(req, res){
        return res.render('register', {error: ''})
    },
    store: function(req, res){
        let form = req.body
        console.log(form);
        let nuevo = {
            email: form.email,
            contrasena: bcrypt.hashSync(form.contrasena, 10),
            info_foto: form.info_foto,
            dni: form.dni,
            fecha: form.fecha,
        }

        db.Usuario.findOne({
        where: { email: form.email }
    })
        .then(function(email){
            console.log(email);
            if (email == null){
                db.Usuario.create(nuevo)
                    .then(function(newUser){
                        console.log(newUser);
                        return res.redirect('/login');
                    })
                    .catch(function(error){
                        console.log(error);
                    });
            }
            else{
                res.render('register', {error: 'El email ya está registrado'});
            }
        })
        .catch(function(error){
            console.log(error);
        });
    
    }}
module.exports = registroController;