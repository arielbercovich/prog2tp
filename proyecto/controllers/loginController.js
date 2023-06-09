let fav = require('../db/productos.js');
let db = require('../database/models')
let op = db.Sequelize.Op;
let bcrypt = require("bcryptjs");

let loginController = {
    index: function (req, res) {
        // si el user esta logueado, redirigirlo a home
        if (req.session.user != undefined) {
            return res.redirect('/')
        }
        else {
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
    profile: function (req, res) {
        let id = req.params.id
            db.Usuario.findByPk(id, {
            where: [[]],
            include : [{association: 'producto', include: [{ association: 'usuario' }]}, {association: 'comentario'}],
            order : [['createdAt', 'ASC']], 
            
        })
        
        .then(function(user){
            if(user){
                return res.render('profile', {user: user})
            };
        })
        .catch(function(error){
            console.log(error);
        });
    },
 
        
    
    edit: function (req, res) {
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
                        }

                        if (req.body.recordarme != undefined) {
                            res.cookie('cookieRecordacion', 'valor', { maxAge: 1000 * 60 * 123123123 })
                        }

                        return res.redirect('/login');
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