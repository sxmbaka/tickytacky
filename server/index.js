const express = require('express');
const http = require('http');
const mongoose = require('mongoose');

const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);
const Room = require('./models/roomModel');
var io = require('socket.io')(server);

app.use(express.json());

const DB = "mongodb+srv://sxmbaka:tickytackydb@tickytacky-cluster.0hyvwpa.mongodb.net/?retryWrites=true&w=majority";

io.on('connection', (socket) => {
    console.log('a user connected with socket id ' + socket.id);
    socket.on('createRoom', async ({ nickname }) => {
        try {
            console.log('Room created by ' + nickname);
            let room = new Room();
            let player = {
                nickname: nickname,
                socketID: socket.id,
                playerType: 'X',
            }
            room.players.push(player);
            room.turn = player;
            room = await room.save();
            console.log(room);
            const roomID = room._id.toString();
            socket.join(roomID);
            io.to(roomID).emit('roomCreated', room);
        } catch (err) {
            console.log(err);
        }
    })
});

mongoose.connect(DB).then(() => console.log("Connected to MongoDB")).catch(err => console.log(err));

server.listen(port, '0.0.0.0', () => console.log(`Listening on port ${port}`));
