let db = require('../database/models')
let op = db.Sequelize.Op;
let bcrypt= require("bcryptjs");

let busquedaController = {
    showResult:function(req, res){
            let busc = req.query.search
            let muestra = {
                where: [{nombre:{[op.like]: `%${busqueda}%`}}],
                order: [['createdAt', 'ASC']],
                include: [{association: 'comentario'}, {association:'usuario'}]
            }
            db.Producto.findAll(muestra) 
            .then(function(results){
                if (results.length != 0){
                    res.render('search-results', {results: results});
                }
        })
    }
}

module.exports = busquedaController;