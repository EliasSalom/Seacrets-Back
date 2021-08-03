const path = require("path");
const db = require("../database/connect");

function get(req,res){
    res.sendFile(path.join(__dirname,"..","public/pages/sign-in.html"))
}

function post(req,res){
    const data = req.body;
    // db.query("SELECT * FROM user WHERE email=$1",[data.email]).then((res)=> {if(!res.rows.length){   }})
    db.query("INSERT INTO user (username, email, password) VALUES($1,$2,$3)",[data.username,data.email,data.password[1]]).then(()=>{console.log("success: true") }).catch((error)=>{success: false})
    res.send("end")
}





module.exports=({get, post})