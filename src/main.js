//1、接口入口、入口文件拆分
const app = require('./app');
//建立数据库连接池
require('./app/database')
//引入环境参数
const config = require('./app/config.js')

app.listen(config.APP_PORT, () => {
    console.log("服务器启动成功～");
});