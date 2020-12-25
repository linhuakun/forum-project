const Router =require('koa-router');

const fileRouter = new Router({prefix:'/upload'});

const{
    avatarHandler,
    pictureHandle,
    pictureResize
}=require('../middleware/file.middleware')


const {
    verifyAuth
}=require('../middleware/auth.middleware')

const {
    saveAvatarInfo,
    savePictureInfo
}=require('../controller/file.controller')

fileRouter.post('/:userId/avatar',verifyAuth,avatarHandler,saveAvatarInfo);

fileRouter.post('/:momentId/picture',verifyAuth,pictureHandle,pictureResize,savePictureInfo)

module.exports = fileRouter