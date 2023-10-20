import PrestamoService from "../services/prestamo-services.js";

export const getAll = async(req, res) =>{
    res.send(await new PrestamoService().getAll())
}
export const getById = async(req, res) =>{
    res.send(await new PrestamoService().getById(req.params.id))
}
export const insert = async(req, res) =>{    
	let rowsAffected = 0;
	try {
		await new PrestamoService().insert(req.body);
		res.status(200).send("Correct Insert,"+ rowsAffected +"RowsAffected");
	} catch (error) {
		res.status(400).send(error)
	}
}
/*
export const update = async(req, res) =>{
    let rowsAffected = 0;
	try {
		await new PrestamoService().insert(req.body);
		res.status(200).send("Correct Insert,"+ rowsAffected +"RowsAffected");
	} catch (error) {
		res.status(400).send(error)
	}
}
export const deleteById = async(req, res) =>{
    res.send(await new PrestamoService().deleteById(req.params.id))
}*/