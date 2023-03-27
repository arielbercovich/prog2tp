let express = require('express');
let router = express.Router();
let productController = require('../controllers/productController.js');

router.get('/', productController.index);


module.exports = router;