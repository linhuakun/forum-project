//2、各种插件使用
const Koa = require('koa');

var cors = require('koa2-cors');



//解析json、urlencode数据
const  bodyParser = require('koa-bodyparser')
//中间件路由部分
const useRoutes=require('../router');
//错误信息返回
const errorHandler=require('./error-handle');



const app = new Koa();


app.use(cors( {}));


app.use(bodyParser())
// 方法一：
useRoutes(app);

//方法二：
// app.useRoutes = useRoutes;
// app.useRoutes();

app.on('error',errorHandler)

module.exports = app;



// {
//     origin: function (ctx) {
//         return '*'  // 允许来自所有域名请求
//        // return 'http://localhost:8080'; / 这样就能只允许 http://localhost:8080 这个域名的请求了
//     },
//     maxAge: 5, //指定本次预检请求的有效期，单位为秒。
//     credentials: true, //是否允许发送Cookie
//     allowMethods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS'], //设置所允许的HTTP请求方法
//     allowHeaders: ['Content-Type', 'Authorization', 'Accept'], //设置服务器支持的所有头信息字段
//     exposeHeaders: ['WWW-Authenticate', 'Server-Authorization'] //设置获取其他自定义字段
// }