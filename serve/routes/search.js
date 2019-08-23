const express = require('express')
const pool = require('../pool.js')
let router = express.Router();

router.get('/',(req,res)=>{
    let msg = req.query.msg.slice(0,2);
    let sql_all = "select * from boss_pro";
    let sql_pn = "select * from boss_pro where concat(`pname`,`position`,`city`,`education`) like concat('%',?,'%')";
    if(msg=="全国"){
        pool.query(sql_all,(err,result)=>{
            if(err) throw err;
            res.send(result)
        })
    }else{
        pool.query(sql_pn,[msg],(err,result)=>{
            if(err) throw err;
            if(result.length>0){
                res.send(result)
            }else{
                res.send([])
            }
        })
    }
})


module.exports = router;