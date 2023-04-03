var express = require('express');
var router = express.Router();
let productController = require('../controllers/productController.js');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' }, productController.indice);
});

module.exports = router;
