let db = require('../database/models')
let op = db.Sequelize.Op;
let bcrypt= require("bcryptjs");

let busquedaController = {
    showResult: function(req, res) {
      let busqueda = req.query.search;
      let display = {
        where: {[op.or]: [{ nombre_producto: { [op.like]: `%${busqueda}%` } }, { descripcion: { [op.like]: `%${busqueda}%` } }]},
        order: [['createdAt', 'DESC']],
        include: [{ association: 'comentario' }, { association: 'usuario' }]
      };
  
      db.Producto.findAll(display)
        .then(function(results) {
          let error = {};
          if (results.length != 0) {
            res.render('search-results', { results: results });
          } else {
            error.mensaje = `No se encontraron resultados para ${busqueda}. Intente nuevamente.`;
            res.locals.errors = error;
            return res.render('search-results', { results: [] });
          }
        })
        .catch(function(error) {
          console.log(error);
        });
    }
  };
  

module.exports = busquedaController;