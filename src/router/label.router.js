const  Router =require('koa-router');

const{
    verifyAuth
} = require('../middleware/auth.middleware')

const {
    create,
    list
}=require('../controller/label.controller')

const labeLRouter = new Router({prefix:'/label'});
//添加标签
labeLRouter.post('/',verifyAuth,create)

labeLRouter.get('/',list);

module.exports = labeLRouter;