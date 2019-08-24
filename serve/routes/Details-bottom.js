const express=require("express");
const router=express.Router();
const pool=require("../pool")


router.get('/',function(req,res){
    var sql="SELECT pid,pname,position,city,age,education,minsal,maxsal,many,financing,jpg FROM boss_pro";
    pool.query(sql,(err,result)=>{
        if(err){
            throw err;
        }
        res.send({
            code:1,
            msg:"查询成功",
            data:result
        })
    })
})
module.exports= router