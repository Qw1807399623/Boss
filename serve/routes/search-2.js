const express=require('express')
const pool=require('../pool.js')
let router=express.Router();

/* router.get('/',(req,res)=>{
    let msg=req.query.msg
    let sql_all = "select * from boss_pro";
    let sql_pn = "select * from boss_pro where concat(`age`,`city`,`many`,`education`,`financing`) like concat('%',?,'%')";
    pool.query(sql_pn,[msg],(err,result)=>{
        if(err)throw err;
        res.send(result)
        console.log(result)
    })
}) */

router.get('/',(req,res)=>{
    let msg=req.query.msg
    let code=req.query.code;
    let min = 0;
    let max = 0;
    switch(code) {
        case '0':
        break;
        case '1':
        min = 0;
        max = 3;
        break;
    }
    let sql  = "select * from boss_pro where minsal=? AND maxsal=? AND concat(`age`,`city`,`many`,`education`,`financing`) like concat('%',?,'%')";
    pool.query(sql,[min,max,msg],(err,result)=>{
        if(err)throw err;
        res.send(result)
        console.log(result)
    })
})

module.exports=router;

