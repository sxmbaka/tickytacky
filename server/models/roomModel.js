const mongoose = require('mongoose');
const playerSchema = require('./playerSchema');

const roomSchema = new mongoose.Schema({
    occupancy: {
        type: Number,
        default: 2,
    },
    maxRound: {
        type: Number,
        default: 6,
    },
    currentRound: {
        required: true,
        type: Number,
        default: 1,
    },
    players: [playerSchema],
    isJoinable: {
        type: Boolean,
        default: true,
    },
    turn: playerSchema,
    turnIndex: {
        type: Number,
        default: 0,
    },
});

const roomModel = mongoose.model('Room', roomSchema);
module.exports = roomModel;
