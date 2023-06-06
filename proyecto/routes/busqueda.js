var express = require('express');
var router = express.Router();
let busquedaController = require('../controllers/busquedaController.js');

/* GET home page. */
router.get('/', busquedaController.showResult);


module.exports = router;