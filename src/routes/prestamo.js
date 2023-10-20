import { Router } from 'express';
import { getAll, getById, insert} from '../controllers/prestamo.js'

const routerPrestamo = Router();

routerPrestamo.get("/prestamos", getAll);
routerPrestamo.get("/prestamo/:id", getById);
routerPrestamo.post("/prestamo", insert);
export default routerPrestamo