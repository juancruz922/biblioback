import config from '../../db-config.js';
import sql from 'mssql';

class LibroService {
    getAll = async () => {
        let returnArray = null;
        console.log('Estoy en: LibroService.getAll()');
        try {
            let pool   = await sql.connect(config);
            let result = await pool.request().query(`SELECT * FROM Libro`);
            returnArray = result.recordsets[0];
        }
        catch (error) {
            console.log(error);
        }
        return returnArray;
    }
    getById = async (id) => {
        let returnEntity = null;
        
        console.log('Estoy en: LibroService.getById(id)');
        console.log(id)
        try {
            let pool   = await sql.connect(config);
            let result = await pool.request()
                .input('pId', sql.Int, id)
                .query(`
                    SELECT * FROM Libro
                    WHERE Id = @pId
                `);
            returnEntity = result.recordsets[0][0];
        } catch (error) {
            console.log(error);
        }
        return returnEntity;
    }
}

export default LibroService;