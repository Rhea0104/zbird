const express = require('express')
const bodyParser = require('body-parser')
var userRouter = require('./routes/user.js')
var productRouter = require('./routes/product.js')
//创建服务器
var server = express()
server.listen(8080)
//托管静态资源到public
server.use(express.static('public'))
//使用body-parser中间件
server.use(bodyParser.urlencoded({
	extended:false
}))
//挂载路由器，挂载到/user
server.use('/user',userRouter)
//挂载路由器，挂载到/product
server.use('/product',userRouter)