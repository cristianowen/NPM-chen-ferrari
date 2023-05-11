import express from "express"
import PersonajeService from "./src/services/personajes-services.js"
import PeliculasService from "./src/services/peliculas-services.js"
import index from "./src/pages/index.js"; 
const app = express()

const getPeliculas = async() => JSON.stringify(await new PeliculasService().getAll())
const getPersonajes = async() => JSON.stringify(await new PersonajeService().getAll())



function botonfunciona () {
    var el = document.getElementById("");
    el.addEventListener("click", function(){modifyText("four")}, false);
  }
app.get('/', async(req, res) => res.send(index(await getPeliculas(), await getPersonajes() 
    
)))

app.get('/peliculas', async(req, res) => res.send(await getPeliculas()))
app.get('/personajes', async(req, res) => res.send(await getPersonajes()))

const port = 3000
app.listen(port, () => console.log(`Example app listening on port ${port}!`))

var deleteid = 2
var id = 1
async function deleteById(deleteid){
    let svc = new PersonajeService();
    let data;
    data = await svc.deleteById(deleteid)
    console.log(data);
}
console.log(await deleteById(deleteid))
async function deleteByIdPeli(deleteid){
    let svc = new PeliculasService();
    let data;
    data = await svc.deleteById(deleteid)
    console.log(data);
}
console.log(await deleteByIdPeli(deleteid))
async function AddPersonaje(PersonajeNuevo){
    let svc = new PersonajeService();
    let data;
    data = await svc.insert(PersonajeNuevo)
    console.log(data);
}
//console.log(AddPersonaje())
async function AddPelicula(PeliculaNueva){
    let svc = new PeliculasService();
    let data;
    data = await svc.insert(PeliculaNueva)
    console.log(data);
}
//console.log(AddPelicula)
async function getAll(){
    let svc = new PersonajeService();
    let data;
    data = await svc.getAll()
    console.log(data);
}
console.log(await getAll())
async function getById(id){
    let svc = new PersonajeService();
    let data;
    data = await svc.getById(id)
    console.log(data);
}
console.log(await getById(id))
async function getAllPeli(){
    let svc = new PeliculasService();
    let data;
    data = await svc.getAll()
    console.log(data);
}
console.log(await getAllPeli())
async function getByIdPeli(id){
    let svc = new PeliculasService();
    let data;
    data = await svc.getById(id)
    console.log(data);
}
console.log(await getByIdPeli(id))

export default botonfunciona
