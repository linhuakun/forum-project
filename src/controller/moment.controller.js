const fs = require('fs');
const fileService = require('../service/file.service');
const momentService = require('../service/moment.service');
const {PICUTURE_PATH}=require('../constants/file-path')

class MomentController {
    async create(ctx,next){
        //1、获取数据（user_id,content）
        const userId=ctx.user.id;
        const content=ctx.request.body.content;


        //2、将数据插入数据库里面
        const result = await momentService.create(userId,content);
        ctx.body =result;
    }

    async detail(ctx,next){
        //1、获取数据（momentId）
        const momentId = ctx.params.momentId;
        ctx.body="获取一条动态详情"+momentId;
        //根据id去查询这条数据
        const result = await momentService.getMomentById(momentId);
        ctx.body = result;
    }

    async list(ctx,next){
        //1、获取数据（offset/size）
        const {offset,size} = ctx.query;

        //2、查询列表
        const result = await momentService.getMomentList(offset,size);
        ctx.body=result;
    }

    async updata(ctx,next){
        //1、获取参数
        const {momentId}=ctx.params;
        const {content}=ctx.request.body;

        
        //修改内容
        const result = await momentService.update(content,momentId);
        ctx.body=result;
    }

    async remove(ctx,next){
        //1、获取momentId
        const {momentId} = ctx.params;

        //2、删除内容
        const result = await momentService.remove(momentId);
        ctx.body = {
            status:"200",
            message:"删除成功"
        }

    }
    async addLabels(ctx,next){
        // 1、获取标签和动态标签
        const {labels} = ctx;
        const {momentId}=ctx.params;
        //2、添加所有标签 
        for(let label of labels)
        { //判断标签是否已经和动态有关了
            const isExist = await momentService.hasLabel(momentId,label.id);
            if(!isExist){
                await momentService.addLabels(momentId,label.id)
            }
        }
        ctx.body = "给动态添加标签成功"
    }
    async fileInfo(ctx,next){
        let {filename} = ctx.params;
        const fileInfo = await fileService.getFileByfilename(filename);
        const {type}= ctx.query;

        const types = ["small","middle","large"];
        if(types.some(item => item === type)){
            filename=filename + '-' +type;
        }
        ctx.response.set('content-type',fileInfo.mimetype);
        ctx.body=fs.createReadStream(`${PICUTURE_PATH}/${filename}`)
    }
}

module.exports = new MomentController();