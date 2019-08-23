const express=require("express");
const router=express.Router();
const pool=require("../pool")
router.get("/",(req,res)=>{
    var sql="SELECT pid,pname,position,city,age,education,minsal,maxsal,many,financing,jpg FROM boss_pro"
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result)
        // console.log(result)
    })
})
module.exports=router;