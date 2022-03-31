const express = require('express');
const router = express.Router();

const controller = require('../controllers/controller');


router.get('/juegos/list', controller.list);
router.get('/juegos/select/:id', controller.select);
router.get('/juegos/delete/:id', controller.delete);
router.post('/juegos/update/:id', function (req, res) { controller.update });
router.post('/juegos/create', function (req, res) { controller.create });

module.exports = router;