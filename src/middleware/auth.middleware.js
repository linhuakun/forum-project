const jwt = require('jsonwebtoken')
//错误信息抽离
const errorType = require('../constants/error-types')
//调用服务器函数
const userservice = require('../service/user.service')
const authservice = require('../service/auth.service')
//解密
const md5password = require('../utils/password-handle')

const {
    PUBLIC_KEY
} = require('../app/config')



const verifyLogin = async (ctx, next) => {
    //1、获取用户名和密码
    const {
        name,
        password
    } = ctx.request.body;

    //2、判断用户名和密码是否为空
    if (!name || !password) {
        const error = new Error(errorType.NAME_OR_PASSWORD_IS_NOT_REQUIRED);
        return ctx.app.emit('error', error, ctx);
    }
    //3、判断用户是是否存在（用户不存在）
    const result = await userservice.getUserByName(name);
    const user = result[0];
    if (!user) {
        const error = new Error(errorType.USER_DOES_NOT_EXISTS);
        return ctx.app.emit('error', error, ctx);
    }
    //4、判断密码是否和数据库中一致
    if (md5password(password) !== user.password) {
        const error = new Error(errorType.PASSWORD_IS_INCORRECT);
        return ctx.app.emit('error', error, ctx);
    }

    ctx.user = user;

    await next();
}

const verifyAuth = async (ctx, next) => {
    //1、获取token
    const authorization = ctx.headers.authorization;
    if (!authorization) {
        const error = new Error(errorType.NOEXISTAUTHORIZATION)
        return ctx.app.emit('error', error, ctx)
    }
    const token = authorization.replace('Bearer ', '');
    //2、验证token(id/name/iat/exp)
    try {
        const result = jwt.verify(token, PUBLIC_KEY, {
            algorithms: ["RS256"]
        });
        ctx.user = result;
        await next();
    } catch (err) {
        const error = new Error(errorTypes.UNAUTHORIZATION);
        ctx.app.emit('error', error, ctx);
    }
}
//1、很多内容都需要验证权限：修改/删除动态，修改/删除评论
//2、接口：业务接口/后台管理系统
// const verifyPermisson = ((tableName)=>{
//     return async (ctx, next) => {
//         //1、获取参数
//         const {
//             momentId
//         } = ctx.params;
//         const {
//             id
//         } = ctx.user;
//         //2、查询是否有权限

//         const isPermisson = await authservice.checkResource(tableName,momentId, id);
//         if (!isPermisson) {
//             const error = new Error(errorType.UNPERMISSION);
//             return ctx.app.emit('error', error,ctx);
//         }

//         await next();
//     }
// })

const verifyPermisson = async (ctx, next) => {
    //1、获取参数
    const [resourceKey] = Object.keys(ctx.params);
    const tableName = resourceKey.replace('Id','')
    const resourceId = ctx.params[resourceKey];
    const {id} = ctx.user;
    //2、查询是否有权限

    const isPermisson = await authservice.checkResource(tableName, resourceId, id);
    if (!isPermisson) {
        const error = new Error(errorType.UNPERMISSION);
        return ctx.app.emit('error', error, ctx);
    }

    await next();
}

module.exports = {
    verifyLogin,
    verifyAuth,
    verifyPermisson
}