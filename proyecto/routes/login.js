let express = require('express');
let router = express.Router();
let loginController = require('../controllers/loginController.js');

router.get('/', loginController.index);
router.get('/profile', loginController.profile);
router.get('/profile/edit', loginController.edit);
router.post('/', loginController.show);
router.post('/logout', loginController.logout);


module.exports = router;