import LibroService from "../services/libro-services.js";

export const getAll = async(req, res) =>{
    res.send(await new LibroService().getAll())
}
export const getById = async(req, res) =>{
    res.send(await new LibroService().getById(req.params.id))
}