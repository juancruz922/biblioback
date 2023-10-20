import { Router } from 'express';
import { getAll, getById} from '../controllers/libro.js'

const routerLibro = Router();

routerLibro.get("/libros", getAll);
routerLibro.get("/libro/:id", getById);

export default routerLibro