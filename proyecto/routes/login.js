let express = require('express');
let router = express.Router();
let loginController = require('../controllers/loginController.js');

router.get('/', loginController.index);

router.get('/profile/:id', loginController.profile);

router.get('/profile-edit', loginController.profileEdit);

router.post('/', loginController.show);

router.post('/logout', loginController.logout);

router.post('/edit/:id', loginController.edit);

module.exports = router;