var express = require('express');
var bodyParse = require('body-parser');
var app = express();

app.all('/*', function(req,res,next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With", "Content-Type, Accept");
    res.header("Access-Control-Allow-Methods", "POST, GET");
    next();
});

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));

var tutorials = [
    {
        id: 1,
        title: "Ep. 57 Arduino Accelerometer & Gyroscope Tutorial MPU-6050 6DOF Module",
        description: "Learn how to work with MPU-6050",
        iframe: '<iframe width="560" height="315" src="https://www.youtube.com/embed/M9lZ5Qy5S2s" frameborder="0" allowfullscreen></iframe>',
        thumbnail: "https://i.ytimg.com/vi/M9lZ5Qy5S2s/mqdefault.jpg"
    },
    {
        id: 2,
        title: "Ep. 56 Arduino based Solar Tracker - Stepper Motor & Light Resistor Tutorial ",
        description: "In this project, we are building a solar tracker used for solar panels. I am using a 28BYJ-48 Stepper motor in order to control the position and light resistors to capture the light intensity. I've build a simple demonstration platform in order to fully showcase the capabilities of this project (More information will be available on my website on how to build your own.)",
        iframe: '<iframe width="560" height="315" src="https://www.youtube.com/embed/W3EpomxomR4" frameborder="0" allowfullscreen></iframe>',
        thumbnail: "https://i.ytimg.com/vi/W3EpomxomR4/mqdefault.jpg"
    }
];

