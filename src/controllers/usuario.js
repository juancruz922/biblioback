import UsuarioService from "../services/usuario-services.js";

export const getAll = async(req, res) =>{
    res.send(await new UsuarioService().getAll())
}
export const getById = async(req, res) =>{
    res.send(await new UsuarioService().getById(req.params.id))
}