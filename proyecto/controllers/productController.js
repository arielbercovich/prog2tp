let db = require('../db/productos.js');

let productController = {

    index: function(req, res){
        return res.render('index', {arqueros: db.arqueros, volantes: db.volantes, delanteros: db.delanteros})
    },
    add: function (req, res){
        return res.render('product-add')
    },
    show: function (req, res){
        return res.render('product', {producto: db.delanteros})
        
    }
};

module.exports = productController;