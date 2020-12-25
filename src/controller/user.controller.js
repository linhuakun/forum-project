const fs=require('fs');

const {create} = require('../service/user.service')
const fileService=require('../service/file.service')

const {AVATAR_PATH}=require('../constants/file-path')

class UserController{
    async create(ctx,next){
        //获取用户请求传递的参数
        const user=ctx.request.body;
        //查询数据
        const result = await create(user);
        //返回数据
        ctx.body ={
            status:200,
            message:"注册成功"
        };
    }
    async avatarInfo(ctx,next){
        //1、用户的头像是哪一个文件
        const {userId}=ctx.params;

        const avatarInfo = await fileService.getAvatarByUserId(userId);
        //1、提供图像信息
        ctx.response.set('content-type',avatarInfo.mimetype);
    
        ctx.body = fs.createReadStream(`${AVATAR_PATH}/${avatarInfo.filename}`);



 }
}

module.exports= new UserController();