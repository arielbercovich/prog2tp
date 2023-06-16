let modelos = require('../database/models');  // Chequear
let { Op }  = modelos.Sequelize;


let productController = {

    index: function(req, res){
       
        modelos.Producto.findAll({
          where: {
             posicion: [ 'arquero', 'defensor' ,'volante', 'delantero']
          },
          include: [{ association: 'comentario' }, { association: 'usuario' }],
          order: [['posicion', 'ASC'], ['createdAt', 'DESC']]
        
        })
        .then(function(posiciones){
          return res.render('index', {posiciones: posiciones});
        })
        .catch(function(error){
          console.log(error);
          res.status(500).send('Error');
        });
      },
    add: function(req, res){
        return res.render ('product-add')
    },
    addProduct: function (req, res) {
        let form = req.body;


        modelos.Producto.create({
        id_usuario: req.session.user.id,
        nombre_producto: form.nombre_producto,
        descripcion: form.descripcion,
        foto: form.imagen,
        posicion: form.posicion,
        detalle: form.detalle,
        })
        .then(function (producto) {
            return res.redirect('/');
        })
        .catch(function (error) {
            console.log(error);
            return res.render('product-add', { mensaje: 'Ocurrió un error al agregar el producto' });
        });
    },
  
     
    show: function (req, res){
        modelos.Producto.findOne({
            where: [{id: req.params.id}],
            include: [{association: 'usuario'}, {association:'comentario', 
            include : [{association : 'usuario'}], order : [['createdAt', 'DESC']]}
            ]
        })
        .then(function(producto){
                return res.render("product", {producto: producto}) 
              })
        .catch(function (error) {
            console.log(error);
          });
    
    },
    delete: function(req, res) {
      if (req.session.user == undefined) {
        return res.redirect('/login');
      } else {
        modelos.Producto.findByPk(req.params.id)
          .then(function(producto) {
            if (producto.id_usuario == req.session.user.id) {
              modelos.Comentario.destroy({
                where: { id_post: req.params.id } // Elimina los comentarios asociados al producto
              })
                .then(function(borrado) {
                  modelos.Producto.destroy({
                    where: { id: req.params.id } // Elimina el producto
                  })
                    .then(function(borrar) {
                      return res.redirect('/');
                    })
                    .catch(function (error) {
                      console.log(error);
                    });
                })
                .catch(function (error) {
                  console.log(error);
                });
            }
          });
      }
    },
    
    comment: function (req, res) {
      if (req.session.user == undefined) {
        return res.redirect("/login");
      }
    
      let newComment = {
        id_post: req.params.id,
        texto_comentario: req.body.comentario,
        id_usuario: req.session.user.id
      };
        
      modelos.Comentario.create(newComment)
        .then(function (respuesta) {
          return res.redirect(`/productos/id/${req.params.id}`);
        })
        .catch(function (error) {
          console.log(error);
        });
    },
    
    edit: function(req, res){
      if (req.session.user == undefined) {
          return res.redirect('/login')
      } else {
          modelos.Producto.findByPk(req.params.id)
          .then(function(producto){
              if(producto.id_usuario == req.session.user.id){
                  modelos.Producto.findOne({
                      where: [{id: req.params.id}]
                  })
                  .then (function(producto){
                      return res.render ('edit', {producto: producto} );
                  })
                  .catch(function (error) {
                    console.log(error);
                  });
              } else {
                  return res.redirect('/')
              }
          })
          .catch(function (error) {
            console.log(error);
          });
      }
  },
    editar: function (req, res) {
        let producto = {
          nombre_producto: req.body.nombre,
          descripcion: req.body.descripcion,
          foto: req.body.foto};

        modelos.Producto.update(producto, {
          where: {id: req.params.id}
        })
          .then(function (result) {
            return res.redirect(`/productos/id/${req.params.id}`);
          })
          .catch(function (error) {
            console.log(error);
          });
    }

}
       


      

module.exports = productController;