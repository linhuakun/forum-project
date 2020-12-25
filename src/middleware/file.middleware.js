const path = require('path')
const Multer = require('koa-multer')
const Jimp= require('jimp');
const {AVATAR_PATH,PICUTURE_PATH}= require('../constants/file-path');

const avatarUpload = Multer({
    dest:AVATAR_PATH
})

const pictureUpload = Multer({
    dest:PICUTURE_PATH
})

const avatarHandler = avatarUpload.single('avatar');

const pictureHandle = pictureUpload.array('picture',9);

const pictureResize =async(ctx,next)=>{
        //1、获取所有的图像信息
        const files = ctx.req.files;

        //2、对图像进行处理（sharp(path).resize)/jimp await等他完成 回调函数不需要等待
        for(let file of files){
            const destPath = path.join(file.destination,file.filename)
            Jimp.read(file.path).then(image=>{
                image.resize(1280,Jimp.AUTO).write(`${destPath}-large`);
                image.resize(640,Jimp.AUTO).write(`${destPath}-middle`);
                image.resize(320,Jimp.AUTO).write(`${destPath}-small`);
            })
        }
        await next()

}

module.exports={
    avatarHandler,
    pictureHandle,
    pictureResize
};