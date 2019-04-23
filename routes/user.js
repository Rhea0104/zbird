const express = require('express')
//创建路由器对象
var router = express.Router()
//使用连接池
var pool = require('../pool.js')
//1.注册用户 
//1.1检验用户名是否已存在  /reg  get方法   
router.get('/reg',(req,res)=>{
	var $uname = req.query.uname
	if(!$uname){
		res.send('用户名不能为空')
		return ;
	}
	pool.query('SELECT uname FROM zbird_user WHERE uname=?',[$uname],(err,result)=>{
		if(err) throw err
		res.send(result)
	})
})
//1.2注册用户 /reg  post方法
router.post('/reg',(req,res)=>{
	var $uname = req.body.uname
	var $upwd = req.body.upwd
	if(!$uname){
		res.send('用户名不能为空')
		return ;
	}
	if(!$upwd){
		res.send('密码不能为空')
		return ;
	}
	pool.query('INSERT INTO zbird_user SET ?',[req.body],(err,result)=>{
		if(err) throw err
		res.send(result)
	})
})
//2.用户查询，删除，修改
//2.1用户查询 /query get
router.get('/query',(req,res)=>{
	pool.query('SELECT * FROM zbird_user',(err,result)=>{
		if(err) throw err
		res.send(result)
	})
})
//2.2用户删除 /del get
router.get('/del',(req,res)=>{
	console.log(req.query)
	var $uid = req.query.uid
	if(!$uid){
		res.send('用户id不存在')
		return ;
	}
	pool.query('DELETE FROM zbird_user WHERE uid=?',[$uid],(err,result)=>{
		if(err) throw err
		if(result.affectedRows>0){
			res.send('1')
		}else{
			res.send('0')	
		}
	})
})
//2.3.1用户查询
router.get('/queryUser',(req,res)=>{
	var $uid=req.query.uid
	if(!$uid){
		res.send('用户id不存在')
		return ;
	}
	pool.query('SELECT * FROM zbird_user WHERE uid=?',[$uid],(err,result)=>{
		if(err) throw err
		res.send(result[0])
	})
})
//2.3.2用户修改
router.post('/update',(req,res)=>{
	var obj = req.body
		console.log(obj)
	for(var key in obj){
		if(!obj[key]){
			res.send(key+'不存在')
			return ;
		}
	}
	pool.query('UPDATE zbird_user SET uname=?,upwd=?,email=?,phone=?,user_name=?,gender=? WHERE uid=?',[obj.uname,obj.upwd,obj.email,obj.phone,obj.user_name,obj.gender,obj.uid],(err,result)=>{
		if(err) throw err
		//console.log(result)
		res.send(result)
		
	})
})
//3.用户登陆 /login post
router.post('/login',(req,res)=>{
	console.log(req.body)
	$uname = req.body.uname
	$upwd = req.body.upwd
	if(!$uname){
		res.send('用户名不能为空')
		return ;
	}
	if(!$upwd){
		res.send('密码不能为空')
		return ;
	}
	pool.query('SELECT uname,upwd FROM zbird_user WHERE uname=? AND upwd=?',[$uname,$upwd],(err,result)=>{
		if(err) throw err
		console.log(result)
		res.send(result)
	})
})
//导出路由器
module.exports = router