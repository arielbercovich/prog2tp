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
            contrasena: bcrypt.hashSync(form.contrasena, 10),
            dni: form.dni,
            fecha: form.fecha,
            createdAt: new Date()
        }

        db.Usuario.findOne({
        where: { email: form.email }
    })
        .then(function(email){
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
                res.send('El correo que ingresaste ya fue registrado, intenta con otro o inicia sesión con tu usuario :)');
            }
        })
        .catch(function(error){
            console.log(error);
        });
    
    }}
module.exports = registroController;