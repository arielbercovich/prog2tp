let express = require('express');
let router = express.Router();
let productController = require('../controllers/productController.js');

router.get('/', productController.show);
router.get('/add', productController.add);


module.exports = router;