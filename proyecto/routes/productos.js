let express = require('express');
let router = express.Router();
let productController = require('../controllers/productController.js');

router.get('/add', productController.add);

router.get('/id/:id', productController.show);


module.exports = router;