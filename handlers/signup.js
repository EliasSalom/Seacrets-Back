const path = require("path");
const db = require("../database/connect");

function get(req,res){
    res.sendFile(path.join(__dirname,"..","public/pages/sign-up.html"))
}

function post(req,res){
    // res.sendFile(path.join(__dirname,"..","public/pages/sign-up.html"))
    const data = req.body;
    console.log(data)
}

module.exports=({get, post})