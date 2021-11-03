var express = require('express');
var router = express.Router();
var sleep = require('system-sleep');

/* GET home page. */
router.get('/', function(req, res, next) {
    console.log('Start - Sleep for 10 seconds');
    sleep(10000);
    console.log('End - Sleep for 10 seconds');
  res.render('index', { title: 'Express' });
});

/* Welcome Student Page. */
router.get('/student_name', function(req, res, next) {
  //await new Promise(resolve => setTimeout(resolve, 5000));
  res.render('student', { title: 'Welcome Student to OpenShift CLI Lab' });
});

module.exports = router;
