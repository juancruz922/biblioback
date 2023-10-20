import { Router } from 'express';
import { getAll, getById} from '../controllers/usuario.js'

const routerUsuario = Router();

routerUsuario.get("/usuarios", getAll);
routerUsuario.get("/usuario/:id", getById);

export default routerUsuario