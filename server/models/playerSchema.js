const mongoose = require('mongoose');

const playerSchema = new mongoose.Schema({
    nickname: {
        required: true,
        type: String,
        trim: true,
        default: "Anonymous",
    },
    socketID: {
        required: true,
        type: String,
        trim: true,
    },
    points: {
        required: true,
        type: Number,
        default: 0,
    },
    // X or O
    playerType: {
        required: true,
        type: String,
    },
});

module.exports = playerSchema;
