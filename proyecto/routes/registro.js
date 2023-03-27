let express = require('express');
let router = express.Router();
let registroController = require('../controllers/registroController');

router.get('/', registroController.index);


module.exports = router;