import config from '../../db-config.js';
import sql from 'mssql';

class PrestamoService {
    getAll = async () => {
        let returnArray = null;
        console.log('Estoy en: PrestamoService.getAll()');
        try {
            let pool   = await sql.connect(config);
            let result = await pool.request().query(`SELECT * FROM Prestamo`);
            returnArray = result.recordsets[0];
        }
        catch (error) {
            console.log(error);
        }
        return returnArray;
    }
    getById = async (id) => {
        let returnEntity = null;
        
        console.log('Estoy en: PrestamoService.getById(id)');
        console.log(id)
        try {
            let pool   = await sql.connect(config);
            let result = await pool.request()
                .input('pId', sql.Int, id)
                .query(`
                    SELECT * FROM Prestamo
                    WHERE Id = @pId
                `);
            returnEntity = result.recordsets[0][0];
        } catch (error) {
            console.log(error);
        }
        return returnEntity;
    }
    insert = async (prestamo) => {
        let rowsAffected = 0;
        console.log('Estoy en: PrestamoService.insert(prestamo)');
        try {
            let pool = await sql.connect(config);
            let result = await pool.request()
                .input('pPrestamo', sql.NChar , prestamo?.prestamo)
                .input('pImage', sql.NChar , prestamo?.image)
                .query(`
                    INSERT INTO Prestamo (Prestamo, Image) 
                    VALUES (@pPrestamo, @pImage)
                `);
            rowsAffected = result.rowsAffected;
        } catch (error) {
            console.log(error);
        }
        return rowsAffected;
    }
}

export default PrestamoService;