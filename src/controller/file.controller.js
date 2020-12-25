const fileService = require('../service/file.service')
const userService = require('../service/user.service')
const {
    AVATAR_PATH
} = require('../constants/file-path')
const {
    APP_HOST,
    APP_PORT
} = require('../app/config')

class FileController {
    async saveAvatarInfo(ctx, next) {
        //1、获取图像信息
        const {
            mimetype,
            filename,
            size
        } = ctx.req.file;
        
        const {userId}=ctx.params;
        const id=userId;
    

        // 2、将图像信息数据保存在数据库中
        const result = await fileService.isExistAvatar(id)
        if (result) {
            await fileService.updateAvatar(filename, mimetype, size, id)
            //3、将图片信息数据保存在数据库中
            const avatarUrl = `${APP_HOST}:${APP_PORT}/users/${id}/avatar`;
            await userService.updateAvatarUrlById(avatarUrl, userId)
            //3、返回结果
            ctx.body = {
                status: "200",
                message: "修改成功"
            }
        } else {
            await fileService.createAvatar(filename, mimetype, size, id)
            //3、将图片信息数据保存在数据库中
            const avatarUrl = `${APP_HOST}:${APP_PORT}/users/${id}/avatar`;
            await userService.updateAvatarUrlById(avatarUrl, id)
            //3、返回结果
            ctx.body = {
                status: "200",
                message: "上传成功"
            }
        }
    }

    async savePictureInfo(ctx,next){
        //1、获取图形信息
        const files=ctx.req.files;
        const {momentId}=ctx.params;
        const {id}=ctx.user;
        //把图片数据保存数据库中
        for(let file of files){
            const {filename,mimetype,size} = file;
            await fileService.createPicture(filename,mimetype,size,id,momentId)
        }
        ctx.body={
            status:"200",
            message:"动态配图上传完成"
        }
    }
    async
}
module.exports = new FileController();