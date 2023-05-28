let db = require('../db/productos.js');
let dbA = require('../db/prod.js')
let mod = require('../database/models')

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
        
        let lista = null;
        let info = dbA.listaa
        for (let i =0; i< info.length; i++){
            if (info[i].id == req.params.id){
                lista = info[i]
            }
        }
        return res.render('product', {nombre: lista.nombre, descripcion: lista.descripcion, imagen: lista.imagen, comentarios: lista.comentarios})
        
   

        
    }, 
    show: function(req, res): { // ver donde va
            mod.Productos.findAll()
                .then(function(productos)){
                    res.render("Listado de Jugadores", {productos:productos})
         }
    }

};

module.exports = productController;