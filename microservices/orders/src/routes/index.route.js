const { Router } = require('express');
const router = new Router();
const ordersRoutes = require('./orders.route');

router.use('/order', orderRoutes);

module.exports = router;