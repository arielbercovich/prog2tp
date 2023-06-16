var express = require('express');
var router = express.Router();
let busquedaController = require('../controllers/busquedaController.js');

/* GET home page. */
router.get('/', busquedaController.showResult);

router.get("/user", busquedaController.search);

router.get("/user/:id", busquedaController.showUserProfile);


module.exports = router;