import fnc from './../../index.js'
const index = (pelis, personajes) => `
    <h3>
        <a href="/personajes" target="_blank">Ver a: /personajes</a>
        <br>
        <a href="/peliculas" target="_blank">Ver a: /peliculas</a>
    </h3>
    <h1>Funciones</h1>
    <form method="post" action="/">
        <input type="test" name="insert" value="borrar" disabled>

    </form>
    <button >console log 2</button>
    <h1>Pelis</h1>
    <p>${pelis}</p>
    <h1>Personajes</h1>
    <p>${personajes}</p>
    
`

export default index