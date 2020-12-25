const Router =require('koa-router');

const commentRouter = new Router({prefix:'/comment'});

const{
    verifyAuth,
    verifyPermisson,
}= require('../middleware/auth.middleware')

const{
    create,
    reply,
    update,
    remove,
    list
}= require('../controller/comment.controller.js')

//发表评论
commentRouter.post('/',verifyAuth,create);
//回复评论
commentRouter.post('/:commentId/reply',verifyAuth,reply);
//修改评论
commentRouter.patch('/:commentId',verifyAuth,verifyPermisson,update);
//删除评论
commentRouter.delete('/:commentId',verifyAuth,verifyPermisson,remove);
//获取评论列表
commentRouter.get('/',list)


module.exports=commentRouter;