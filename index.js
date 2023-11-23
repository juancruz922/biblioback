import app from "./src/app.js";
import { fileURLToPath } from "url";
import { dirname } from "path";
import libroServicers from "./src/services/libro-services.js";
const __filename = fileURLToPath(import.meta.url);
export const __dirname = dirname(__filename);

console.clear();
const port = 3001;
const libro = new libroServicers();
app.post("/libros", async (req, res) => {
  try {
    res.json(await libro.Getall());
  } catch (error) {
    console.error(error);
    return res.status(500).json("error en el servidor");
  }
});
app.listen(port, () => {
  console.log("ESCUCHANDO PORT 3001");
});
