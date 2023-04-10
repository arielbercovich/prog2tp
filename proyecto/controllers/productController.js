let db = require('../db/productos.js');
let dbA = require('../db/prod.js')

let productController = {

    index: function(req, res){
        return res.render('index', {arqueros: db.arqueros, defensores: db.defensores, volantes: db.volantes, delanteros: db.delanteros})
    },
    add: function (req, res){
        return res.render('product-add')
    },
    show: function (req, res){
        return res.render('product', {producto: db.delanteros})
        
    },
};

module.exports = productController;