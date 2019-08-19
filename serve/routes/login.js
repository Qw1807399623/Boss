const express=require("express");
const router=express.Router();
const pool=require("../pool")

router.get("/",(req,res)=>{
    var phone = req.query.phone
    var upwd = req.query.upwd
    console.log(phone,upwd)
    var sql = "select id from boss_reg where phone=? AND upwd=?"
    pool.query(sql,[phone,upwd],(err,result)=>{
        if(err)throw err;
        console.log(result)
        if(result.length>0){
            req.session.uid = result[0]
            res.send({code:1,msg:"登录成功",data:result[0]})
        }else{
            res.send({code:-1,msg:"登录失败"})
        }
    })
})



module.exports= router