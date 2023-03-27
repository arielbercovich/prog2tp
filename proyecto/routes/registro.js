let express = require('express');
let router = express.Router();
let registroController = require('../controllers/registroController');

router.get('/', registroController.index);
router.get('/email', registroController.email);
router.get('/usuario', registroController.usuario);
router.get('/clave', registroController.clave);
router.get('/nacimiento', registroController.nacimiento);
router.get('/dni', registroController.dni);
router.get('/foto', registroController.foto);

module.exports = router;