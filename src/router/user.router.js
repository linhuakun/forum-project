//3、中间件使用
const Router = require('koa-router');
//拆离中间件
const {
    verifyUser,
    handlePassword
} = require('../middleware/user.middleware')
//拆离中间件
const {
    create,
    avatarInfo,
} = require('../controller/user.controller')

const userRouter = new Router({ prefix: '/users' });

//koa本身是不可以连续中间件，但koa-router支持连续中间件
userRouter.post('/', verifyUser, handlePassword, create);

userRouter.get('/:userId/avatar',avatarInfo)

module.exports = userRouter;