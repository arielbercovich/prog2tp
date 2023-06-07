let db = require('../db/productos.js');
let dbA = require('../db/prod.js')
let modelos = require('../database/models')  // Chequear


let productController = {

    index: function(req, res){
        return res.render('index', {arqueros: db.arqueros, defensores: db.defensores, volantes: db.volantes, delanteros: db.delanteros})
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
            return res.render("product", {producto: producto})     
            console.log(producto)
            return res.render('product', producto);
            let comentadores = [];
                for(let i =0; i<producto.comentario.length; i++){
                modelos.Usuario.findByPk(producto.comentario[i].id_usuario)
                .then(function(unComentador){
                    comentadores.push(unComentador)
                    if (i == producto.comentario.length - 1){
                        res.render('product', {nombre: producto.nombre_producto, descripcion: producto.descripcion, imagen: producto.foto, comentarios: producto.comentario, usuario: producto.usuario, comentadores: comentadores})
                    }
                })
            }

            })
    
        
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