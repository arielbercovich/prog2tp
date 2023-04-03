var express = require('express');
var router = express.Router();
let productController = require('../controllers/productController.js');

/* GET home page. */
router.get('/', productController.index);


module.exports = router;
