const express=require("express")
const mysql=require("mysql")
const cors=require("cors");
const bodyParser=require("body-parser")
const session=require("express-session");
const router=require("./routes/pro");
const reg=require("./routes/reg");
const login=require("./routes/login");
const company=require('./routes/company');
const deta=require("./routes/Details");
const details2=require("./routes/Details-bottom");
const search = require('./routes/search')
const search2 = require('./routes/search-2')
const selectpim = require("./routes/getpim")
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
server.use("/pro",router);
server.use("/reg",reg);
server.use("/login",login);
server.use('/company',company);
server.use('/search',search);
server.use('/search2',search2)
server.use("/selectpim",selectpim)
server .use("/deta",deta);
server.use('/details2',details2);



