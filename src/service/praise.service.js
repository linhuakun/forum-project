const connection  = require('../app/database');
class PraiseService{
    async create(momentId,userId){        

        const statement = `INSERT INTO moment_user (moment_id,user_id) VALUES (?,?);`
        const [result] = await connection.execute(statement,[momentId,userId]);
        return result;
    }
    async list(momentId){
            const statement = `
            SELECT 
            m.id id,
                    (SELECT COUNT(*) FROM moment_user WHERE  moment_user.moment_id=m.id AND moment_user.ispraise=1) promiseCount,
                    IF(COUNT(u.id),JSON_ARRAYAGG(
                    JSON_OBJECT('id', u.id, 'name', u.name) 
                    ),NULL) praise
        FROM moment m
            LEFT JOIN moment_user mu ON m.id=mu.moment_id
            LEFT JOIN user u ON mu.user_id = u.id
        WHERE   mu.ispraise=1 AND m.id = ?
        GROUP BY  m.id;
            `;
            const [result]=await connection.execute(statement,[momentId])
        return result
    }
    async update(ispraise,momentId,userId){
        const statement = `	UPDATE 
        moment m
          LEFT JOIN moment_user mu ON m.id=mu.moment_id
      LEFT JOIN user u ON mu.user_id = u.id
          SET
         mu.ispraise=?		
       WHERE m.id = ? AND mu.user_id=?`
        const [result] = await connection.execute(statement,[ispraise,momentId,userId]);
        return result;  
    }
    async isfrist(momentId,userId){
            const statement = `SELECT * 
            FROM moment m
           LEFT JOIN moment_user mu ON m.id=mu.moment_id
           LEFT JOIN user u ON mu.user_id = u.id
       WHERE   mu.moment_id=? AND mu.user_id = ?;`
           const [result] = await connection.execute(statement,[momentId,userId]);
           return result;
    }
}

module.exports=new PraiseService();