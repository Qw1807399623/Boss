const express=require("express")
const mysql=require("mysql")
const cors=require("cors");
const bodyParser=require("body-parser")
const session=require("express-session");
const pro=require("./routes/pro");
const reg=require("./routes/reg");
const login=require("./routes/login");
const deta=require("./routes/Details");
var server=express();
server.use(express.static("public"));
server.listen(3000)
server.use(cors({
    origin:["http://127.0.0.1:8080","http://localhost:8080"],
    credentials:true
}))
server.use(session({
    secret:"128位字符串",//安全字符串
    resave:true,
    saveUninitialized:true,
}))
server.use(bodyParser.urlencoded({extended:false}))
server.use("/pro",pro);
server.use("/reg",reg);
server.use("/login",login);
server .use("/deta",deta);

