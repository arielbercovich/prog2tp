let express = require('express');
let router = express.Router();
let registroController = require('../controllers/registroController');

router.get('/', registroController.index);
router.post('/', registroController.store);

module.exports = router;