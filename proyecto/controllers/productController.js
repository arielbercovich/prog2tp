let db = require('../db/productos.js');
let dbA = require('../db/prod.js')
let modelos = require('../database/models')  // Chequear
let { Op }  = modelos.Sequelize;


let productController = {

    // index: function(req, res){
    //     modelos.Producto.findAll({
    //         where: [{ posicion: 'arquero'}, { posicion: 'defensor'},{ posicion: 'volante'}, { posicion: 'delantero'}],
    //         include: [{association: 'producto'}, {association: 'usuario'}]
    //     })
    //     .then(function(posicion){
    //         console.log(posicion)


    //     })
    //     return res.render('index', {arqueros: db.arqueros, defensores: db.defensores, volantes: db.volantes, delanteros: db.delanteros})
    // },
    index: function(req, res){
       
        modelos.Producto.findAll({
          where: {
            [Op.or]: [
              { posicion: 'arquero' },
              { posicion: 'defensor' },
              { posicion: 'volante' },
              { posicion: 'delantero' }
            ]
          },
          include: [{ association: 'comentario' }, { association: 'usuario' }]
        })
        .then(function(posiciones){
          console.log(posiciones);
          res.render('index', {posiciones: posiciones});
        })
        .catch(function(error){
          console.log(error);
          res.status(500).send('Error interno del servidor');
        });
      },
    add: function (req, res){
        return res.render('product-add')
    },
    product: function (req, res){
        
        return res.render('product', {nombre: lista[0].nombre, descripcion: lista[0].descripcion, imagen: lista[0].imagen, comentarios: lista[0].comentarios})
    }, 
    show: function (req, res){
        modelos.Producto.findOne({
            where: [{id: req.params.id}],
            include: [{association: 'comentario'}, {association:'usuario'}]
        })
        .then(function(producto){
                for(let i =0; i<producto.comentario.length; i++){
                modelos.Usuario.findByPk(producto.comentario[i].id_usuario)
                }
            return res.render("product", {producto: producto}) 

            })
        .catch(function (error) {
            console.log(error);
          });
    
        
    }
//     nombre: function(req,res): { 
//             modelos.Productos.findAll({
//                 where: {
//                     id: 3
//                 }
//             })
//             .then(function(productos) {
//                 res.render("Listado de Jugadores", {productos:productos})
//             })
//         }  
};

module.exports = productController;