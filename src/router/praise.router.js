const  Router =require('koa-router');

const{
    verifyAuth
} = require('../middleware/auth.middleware')

const {
    create,
    list,
    update,
    isfrist
}=require('../controller/praise.controller')

const praiseRouter = new Router({prefix:'/praise'});
//给动态点赞
praiseRouter.post('/:momentId',verifyAuth,create)
//获取动态点赞列表
praiseRouter.get('/:momentId',list)
//更新动态是否点赞
praiseRouter.post('/update/:momentId',verifyAuth,update)
//判断是否给动态点赞过
praiseRouter.post('/ispraise/:momentId',verifyAuth,isfrist)

module.exports = praiseRouter;