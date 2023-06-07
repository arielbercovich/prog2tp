let db = require('../database/models')
let op = db.Sequelize.Op;
let bcrypt= require("bcryptjs");

let busquedaController = {
    showResult:function(req, res){
            let busc = req.query.search
            let muestra = {
                where: [{nombre_producto:{[op.like]: `%${busc}%`}}],
                order: [['createdAt', 'ASC']],
                include: [{association: 'comentario'}, {association:'usuario'}]
            }

            db.Producto.findAll(muestra) 


            .then(function(results){
                let error = {}
                if (results.length != 0){
                    
                for (let i = 0; i < results.length; i++) {
                    if (results[i].comentarios) {
                    results[i].numComentarios = results[i].comentarios.length;
                } else {
                    results[i].numComentarios = 0;
                }
                res.render('search-results', {results: results});
          }
                }
                else{
                    error.mensaje = `El jugador ${busc} ya tiene contrato con otro club.`;
                    console.log(error);
                    res.locals.errors = error;
                    return res.render('search-results', { results: [] });
                }
        })
            .catch(function(error){
                console.log(error)

            })

            
    }
}

module.exports = busquedaController;