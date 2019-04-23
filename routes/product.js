const express = require('express')
//创建路由器对象
var router = express.Router()
//使用连接池
var pool = require('../pool')



//导出路由器
module.exports = router