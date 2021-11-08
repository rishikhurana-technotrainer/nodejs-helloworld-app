var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

/* Welcome Student Page. */
router.get('/student_name', function(req, res, next) {
  //await new Promise(resolve => setTimeout(resolve, 5000));
  res.render('student', { title: 'Welcome Student to OpenShift CLI Lab' });
});

module.exports = router;
