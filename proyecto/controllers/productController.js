let db = require('../db/productos');

let productController = {
    index: function(req, res){
        return res.render('index', {productos: db.lista})
    }
};

module.exports = productController;