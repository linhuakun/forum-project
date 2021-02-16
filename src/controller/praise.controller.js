const service = require('../service/praise.service')

const errorType = require('../constants/error-types')

class PraiseController{
    async create(ctx,next){
        const {id} = ctx.user;
        const {momentId}=ctx.params
        const result = await service.create(momentId,id);
        ctx.body = result;
    }
    async list(ctx,next){
        const {momentId}=ctx.params
        const [result] = await service.list(momentId);
        ctx.body = result
    }
    async update(ctx,next){
        const {id} = ctx.user;
        const {momentId}=ctx.params
        const {ispraise}=ctx.request.body
        const result= await service.update(ispraise,momentId,id);
        ctx.body = result
    }
    async isfrist(ctx,next){
        const {momentId}=ctx.params
        const {id} = ctx.user;
        const result=await service.isfrist(momentId,id);
        if(result.length)
        {
            const error=new Error(errorType.ISNOTFRIST)
            return ctx.app.emit('error', error, ctx);
        }
        else{
        ctx.body = {
            "status":"200",
            "message":"第一次"
        }
     }
    }

}

module.exports = new PraiseController();