import config from '../../db-config.js';
import sql from 'mssql';

class UsuarioService {
    getAll = async () => {
        let returnArray = null;
        console.log('Estoy en: UsuarioService.getAll()');
        try {
            let pool   = await sql.connect(config);
            let result = await pool.request().query(`SELECT * FROM Usuario`);
            returnArray = result.recordsets[0];
        }
        catch (error) {
            console.log(error);
        }
        return returnArray;
    }
    getById = async (id) => {
        let returnEntity = null;
        
        console.log('Estoy en: UsuarioService.getById(id)');
        console.log(id)
        try {
            let pool   = await sql.connect(config);
            let result = await pool.request()
                .input('pId', sql.Int, id)
                .query(`
                    SELECT * FROM Usuario
                    WHERE Id = @pId
                `);
            returnEntity = result.recordsets[0][0];
        } catch (error) {
            console.log(error);
        }
        return returnEntity;
    }
}

export default UsuarioService;