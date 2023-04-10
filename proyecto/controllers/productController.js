let db = require('../db/productos.js');

let productController = {

    index: function(req, res){
        return res.render('index', {arqueros: db.arqueros, defensores: db.defensores, volantes: db.volantes, delanteros: db.delanteros})
    },
    add: function (req, res){
        return res.render('product-add')
    },
    // product: function (req, res){
    //     let info = db.lista
    //     // let idProducto = req.params.info.id
    //     return res.render('product')
    // }


    show: function (req, res){
        return res.render('product', {producto: db.delanteros})
        
    }
};

module.exports = productController;