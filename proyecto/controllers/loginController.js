let loginController = {
    usuario: function(req, res){
        return res.send('Usuario')
    },
    clave: function(req, res){
        return res.send('Clave')
    },
    recordame: function(req, res){
        return res.send('Recordame')
    }
}
module.exports = loginController