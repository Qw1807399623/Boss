const express=require("express");
const router=express.Router();
const pool=require("../pool")



router.get("/",(req,res)=>{
    var sql="SELECT pid,position,city,age,education,skill,sal,jpg,website,pname FROM boss_details"
    pool.query(sql,[],(err,result)=>{
        if(err)throw err;
        res.send(result)
    })
})




module.exports= router