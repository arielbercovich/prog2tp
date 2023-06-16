let db = require('../database/models')
let op = db.Sequelize.Op;
let bcrypt= require("bcryptjs");

let busquedaController = {
  showResult: function(req, res) {
    let busqueda = req.query.search;
    let display = {
      where: {
        [op.or]: [
          { nombre_producto: { [op.like]: `%${busqueda}%` } },
          { descripcion: { [op.like]: `%${busqueda}%` } }
        ]
      },
      order: [['createdAt', 'DESC']],
      include: [{ association: 'comentario' }, { association: 'usuario', as: 'usuario' }]
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
  },
  
    search: function(req, res) {
      let busqueda = req.query.search;
      let display = {
        where: {[op.or]: [{ usuario: { [op.like]: `%${busqueda}%` } }, { email: { [op.like]: `%${busqueda}%` } }]},
        order: [['createdAt', 'DESC']],
        include: [{ association: 'comentario' }, { association: 'producto' }]
      };
    
      db.Usuario.findAll(display)
        .then(function(results) {
          let error = {};
          if (results.length != 0) {
            res.render('search-users', { results: results });
          } else {
            error.mensaje = `No se encontraron resultados para ${busqueda}. Intente nuevamente.`;
            res.locals.errors = error;
            return res.render('search-users', { results: [] });
          }
        })
        .catch(function(error) {
          console.log(error);
        });
    },
    
    showUserProfile: function(req, res) {
      let user = req.params.id;
      res.render('search-users', { results: [user] });
    },

};
module.exports = busquedaController;