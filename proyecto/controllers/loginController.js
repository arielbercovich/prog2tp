let fav = require('../db/productos.js');
let db = require('../database/models')
let op = db.Sequelize.Op;
let bcrypt = require("bcryptjs");
const Usuario = require('../database/models/Usuario.js');

let loginController = {
    index: function (req, res) {
        if (req.session.user != undefined) {
            return res.redirect('/')
        }
        else {
            return res.render('login')
        }
    },
    profile: function (req, res) {
        db.Usuario.findOne({
            where: [{id: req.params.id}],
            include: [{association: 'comentario'}, {association:'producto'}]
        })
        .then(function(user){
           
            return res.render('profile', { user: user })
        })
        
            .catch(function (error) {
                 console.log(error);
               });
        
    },

        
    
    edit: function (req, res) {
        let user = req.session.user
        db.Usuario.update({
            email: req.body.email,
                usuario: req.body.usuario,
                contrasena: bcrypt.hashSync(req.body.contrasena, 10),
                fecha: req.body.fechaNacimiento,
                dni: req.body.nroDocumento,
                foto: req.body.info_foto},
            {where: [{
                user: req.session.user
            }],}
        )
        
        return res.render('profile-edit')
    },

    show: function (req, res) {
        let form = req.body
        db.Usuario.findOne({
            where: { email: form.email }
        })

            .then(function (userEncontrado) {
                let error = {}
                if (userEncontrado == null) {
                    error.mensaje = 'El email que ingresaste no está registrado'
                    res.locals.errors = error;
                    console.log(error);
                    return res.render('login');

                }

                else {
                    let comparacion = bcrypt.compareSync(form.contrasena, userEncontrado.contrasena)

                    if (comparacion) {
                        req.session.user = {
                            email: userEncontrado.email,
                            id: userEncontrado.id,
                            usuario: userEncontrado.usuario
                        }

                        if (req.body.recordarme != undefined) {
                            res.cookie('cookieRecordacion', 'valor', { maxAge: 1000 * 60 * 123123123 })
                        }

                        return res.redirect('/');
                    }
                    else {
                        error.mensaje = 'La contraseña no coincide';
                        console.log(error);
                        res.locals.errors = error;
                        return res.render('login');
                    }

                }
            })
            .catch(function (errores) {
                console.log(errores);
            })
    },
    logout: function(req,res){
        req.session.destroy();
        res.clearCookie('cookieRecordacion')
        res.redirect('/')
    }

}
module.exports = loginController