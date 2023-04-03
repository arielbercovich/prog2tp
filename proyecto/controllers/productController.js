let db = require('../db/productos.js');

let productController = {
    index: function(req, res){
        return res.render('index', {productos: db.lista})
    },
    add: function (req, res){
        return res.render('product-add')
    },
    show: function (req, res){
        return res.render('product', {producto: db.lista})
    }
};

module.exports = productController;