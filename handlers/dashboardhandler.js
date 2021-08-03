const path = require("path");

function signin(req,res){
    res.sendFile(path.join(__dirname,"..","public/pages/sign-in.html"))
}

module.exports=({signin, signup, forget})