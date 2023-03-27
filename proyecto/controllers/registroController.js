let registroController = {
    index: function(req, res){
        return res.send('Chau')
    },
    email: function(req, res){
        return res.send('Hola');
    },
    usuario: function(req,res){
        return res.send('usuario')
    },
    clave: function(req, res){
        return res.send('Contraseña');
    },
    nacimiento: function(req, res){
        return res.send('nacimiento')
    },
    dni: function(req, res){
        return res.send('dni');
    },
    foto: function(req, res){
        return res.send('foto');
    }
}

module.exports = registroController;