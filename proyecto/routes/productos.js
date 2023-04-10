let express = require('express');
let router = express.Router();
let productController = require('../controllers/productController.js');

router.get('/', productController.show);
router.get('/add', productController.add);
router.get('/id/:id', productController.product);


module.exports = router;