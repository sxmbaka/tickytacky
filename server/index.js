const express = require('express');
const http = require('http');
const mongoose = require('mongoose');

const app = express();
const port = process.env.PORT || 5000;
var server = http.createServer(app);

var io = require('socket.io')(server);

app.use(express.json());

const DB = "mongodb+srv://sxmbaka:tickytackydb@tickytacky-cluster.0hyvwpa.mongodb.net/?retryWrites=true&w=majority";

io.on('connection', (socket) => {
    console.log('a user connected');
});

mongoose.connect(DB).then(() => console.log("Connected to MongoDB")).catch(err => console.log(err));

server.listen(port, '0.0.0.0', () => console.log(`Listening on port ${port}`));
