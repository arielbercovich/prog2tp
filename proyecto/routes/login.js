let express = require('express');
let router = express.Router();
let loginController = require('../controllers/loginController.js');

router.get('/', loginController.index);


module.exports = router;