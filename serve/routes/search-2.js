const express=require('express')
const pool=require('../pool.js')
let router=express.Router();

router.get('/',(req,res)=>{
    let msg=req.query.msg
    let sql_all = "select * from boss_pro";
    let sql_pn = "select * from boss_pro where concat(`age`,`city`,`many`,`education`,`financing`) like concat('%',?,'%')";
    pool.query(sql_pn,[msg],(err,result)=>{
        if(err)throw err;
        res.send(result)
        console.log(result)
    })
}) 


module.exports=router;

