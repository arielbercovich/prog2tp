let db = require('../database/models')
let op = db.Sequelize.Op;
let bcrypt = require("bcryptjs");
const { locals } = require('../app');


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
            include: [{association: 'comentario'}, {association:'producto', order: [['createdAt', 'ASC']]}]
        })
        .then(function(user){
            // return res.send(res.session
            return res.render('profile', { user: user })
        })
        
            .catch(function (error) {
                 console.log(error);
               });
        
    },
    profileEdit: function (req, res) {
        if (req.session.user == undefined) {
            return res.redirect('/login')
        } else {
            return res.render('profile-edit')
        }
    },
    
    edit: function (req, res) {
        //detectar errores de los datos del usuairo en el form 
        let errores = {}
        if (req.body.usuario == '') {
            errores.message = "El nombre de usuario es obligatorio"
            res.locals.errores = errores
            return res.render('profile-edit');
        } else if (req.body.email == '') {
            errores.message = "El email es obligatorio" 
            res.locals.errores = errores 
            return res.render('profile-edit');
        } else if (req.body.contrasena == '') {
            errores.message = "La contraseña es obligatoria"
            res.locals.errores = errores
            return res.render('profile-edit');
        } else if (req.body.contrasena.length < 3) {
            errores.message = "La contraseña tiene que tener al menos 3 caracteres" 
            res.locals.errores = errores
            return res.render('profile-edit');
        } else if (req.body.contrasenaAnterior == '') {
            errores.message = "Escriba su contraseña anterior" 
            res.locals.errores = errores
            return res.render('profile-edit');
        } else {
            db.Usuario.findOne({
                    where: [{
                        email: req.body.email
                    }]
                })
                .then(function (user) {
                    if (user) {
                        //chequear que la contrasena anterior es correcta 
                        let compare = bcrypt.compareSync(req.body.contrasenaAnterior, user.contrasena)
                        if (compare) {
                            let user = {
                                email: req.body.email,
                                usuario: req.body.usuario,
                                contrasena: bcrypt.hashSync(req.body.contrasena, 10), //vamos a hashear la contrasena que viene del form
                                fecha: req.body.fecha,
                                documento: req.body.dni,
                                foto: req.body.foto
                            }
                            db.Usuario.update(user, {
                                    where: [{
                                        id: req.body.id
                                    }]
                                })
                                .then(function (user) {

                                    return res.redirect('/')

                                })
                                .catch(function (error) {
                                    console.log(error);
                                  });
                        } else {
                            errores.message = "La contraseña anterior es incorrecta" 
                            res.locals.errores = errores 
                            return res.render('profile-edit');
                        }
                    } else {
                        errores.message = "El mail no esta registrado" 
                        res.locals.errores = errores 
                        return res.render('register');
                    }
                })
                .catch(function (error) {
                    console.log(error);
                  });
                
        }
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