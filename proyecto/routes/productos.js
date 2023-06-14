let express = require('express');
let router = express.Router();
let productController = require('../controllers/productController.js');

router.get('/add', productController.add);
router.post('/add', productController.addProduct);

router.get('/id/:id', productController.show);
router.post('/id/:id?', productController.comment);
router.post('/delete/:id', productController.delete);
// router.get("/edit/:id" , productController.edit)



module.exports = router;