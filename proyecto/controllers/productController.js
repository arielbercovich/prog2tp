let db = require('../db/productos.js');

let productController = {
    index: function(req, res){
        return res.render('product', {productos: db.lista})
    },
    add: function (req, res){
        return res.render('product-add')
    }
};

module.exports = productController;