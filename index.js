import express from "express"
import PersonajeService from "./src/services/personajes-services.js"
import PeliculasService from "./src/services/peliculas-services.js"
import index from "./src/pages/index.js"; 
var app = express()

const getPeliculas = async() => JSON.stringify(await new PeliculasService().getAll())
const getPersonajes = async() => JSON.stringify(await new PersonajeService().getAll())
app.get('/', async(req, res) => res.send(index(await getPeliculas(), await getPersonajes())))
app.get('/peliculas-services', async(req, res) => res.send(peliculas(await getPeliculas())))
app.get('/personajes-services', async(req, res) => res.send(personajes(await getPersonajes())))

app.listen(3000, function() {
    console.log('Example app listening on port 3000!')
})

var deleteid = 2
var id = 1

async function deleteById(deleteid){
    let svc = new PersonajeService();
    let data;
    data = await svc.deleteById(deleteid)
    console.log(data);
}
console.log(deleteById)
async function deleteByIdPeli(deleteid){
    let svc = new PeliculasService();
    let data;
    data = await svc.deleteById(deleteid)
    console.log(data);
}
console.log(deleteByIdPeli)
async function AddPersonaje(PersonajeNuevo){
    let svc = new PersonajeService();
    let data;
    data = await svc.insert(PersonajeNuevo)
    console.log(data);
}
console.log(AddPersonaje)
async function AddPelicula(PeliculaNueva){
    let svc = new PeliculasService();
    let data;
    data = await svc.insert(PeliculaNueva)
    console.log(data);
}
console.log(AddPelicula)
async function getAll(){
    let svc = new PersonajeService();
    let data;
    data = await svc.getAll()
    console.log(data);
}
console.log(getAll)
async function getById(id){
    let svc = new PersonajeService();
    let data;
    data = await svc.getById(id)
    console.log(data);
}
console.log(getById)
async function getAllPeli(){
    let svc = new PeliculasService();
    let data;
    data = await svc.getAll()
    console.log(data);
}
console.log(getAllPeli)
async function getByIdPeli(id){
    let svc = new PeliculasService();
    let data;
    data = await svc.getById(id)
    console.log(data);
}
console.log(getByIdPeli)