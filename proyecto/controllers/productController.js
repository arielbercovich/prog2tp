let db = require('../db/productos');

let productController = {
    index: function(req, res){
        return res.render('product')
    }
};

module.exports = productController;