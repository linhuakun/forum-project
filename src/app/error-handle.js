const errorType = require("../constants/error-types");

const errorHandler = (error, ctx) => {
    let status, message;
    switch (error.message) {
        case errorType.NAME_OR_PASSWORD_IS_NOT_REQUIRED:
            status = 400;
            message = "用户名或者密码不能为空～";
            break;
        case errorType.USER_ALREADY_EXISTS:
            status = 409; //confict冲突
            message = "用户名已经存在～";
            break;
        case errorType.USER_DOES_NOT_EXISTS:
            status = 400; //confict冲突
            message = "用户不存在～";
            break;
        case errorType.PASSWORD_IS_INCORRECT:
            status = 400; //confict冲突
            message = "密码是错误的～";
            break;
        case errorType.UNAUTHORIZATION:
            status = 401; //confict冲突
            message = "无效token";
            break;
        case errorType.NOEXISTAUTHORIZATION:
            status = 402; //confict冲突
            message = "token无上传";
            break;
        case errorType.ISNOTFRIST:
            status = 402;
            message ="不是第一次";
            break
        case errorType.UNPERMISSION:
            status = 401; //confict冲突
            message = "你不具备操作权限";
            break;
        default:
            status = 404;
            message = "NOT FOUND";
    }
    ctx.status = 200;
    status = JSON.stringify(status)
    ctx.body = {
        message,
        status
    };
}

module.exports = errorHandler