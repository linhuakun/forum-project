const Router=require('koa-router');

const momentRouter = new Router({prefix:'/moment'});

const {
    create,
    detail,
    list,
    updata,
    remove,
    addLabels,
    fileInfo
} = require('../controller/moment.controller')


const {
    verifyAuth,
    verifyPermisson
} = require('../middleware/auth.middleware')


const {
    verifyLabelExists
} = require('../middleware/label.middleware')

momentRouter.post('/',verifyAuth,create);
momentRouter.get('/',list);
momentRouter.get('/:momentId',detail);

//1、用户必须登陆 2、用户具备权限
momentRouter.patch('/:momentId',verifyAuth,verifyPermisson,updata);
momentRouter.delete('/:momentId',verifyAuth,verifyPermisson,remove);
//2、给动态添加标签
momentRouter.post('/:momentId/labels',verifyAuth,verifyPermisson,verifyLabelExists,addLabels)

momentRouter.get('/images/:filename',fileInfo)


module.exports=momentRouter