import sql from 'mssql';
import config from './../../dbconfig.js';

class PeliculasService {
    getAll = async () => {
      let returnArray=null
      console.log("estoy en peliculas.getALL")
      try {
        let pool = await sql.connect(config)
        let result = await pool.request()
        .query('SELECT * FROM Peliculas')
        returnArray =result.recordsets[0][0]
      } catch (error) {
        console.log(error)
      }
      return returnArray
    }

    getById = async (id) => {
      let returnEntity=null
      console.log("estoy en peliculas.getbyid")
      try {
        let pool = await sql.connect(config)
        let result = await pool.request()
        .input('pId',sql.int, id)
        .query('SELECT * FROM Peliculas WHERE id = pId')
        returnEntity =result.recordsets[0][0]
      } catch (error) {
        console.log(error)
      }
      return returnEntity
    }

    insert = async (pelicula) => {
        let rowsAffected = 0;
        console.log("estoy en peliculas.insert")
        try {
          let pool = await sql.connect(config)
          let result = await pool.request()
          .query(`INSERT INTO Peliculas ( titulo, imagen, fechaC, calificacion, personajesA) VALUES ('${pelicula.titulo}','${pelicula.img}','${pelicula.fechaC}','${pelicula.caliicfacion}','${pelicula.personajesA}') `)
          rowsAffected = result.rowsAffected;
        } catch (error) {
          console.log(error)
        }
        return rowsAffected
    }

    update = async (pelicula) => {
        let rowsAffected = 0;
        console.log('Estoy en: update peliculas');

        try {
            let pool = await sql.connect(config);
            let result = await pool.request()
                .query(`UPDATE Peliculas SET 
                titulo = '${pelicula.titulo}',
                Imagen = '${pelicula.img}',
                fechaC = ${pelicula.fechaC},
                calificacion = ${pelicula.calificacion},
                personajesA = '${pelicula.personajesA}',
                WHERE IDd = ${pelicula.id}`);
            rowsAffected = result.rowsAffected;
        } catch (error) {
            console.log(error);
        }
        return rowsAffected;
    }
    
    deleteById = async (id) => {
        let rowsAffected = 0;
        console.log('Estoy en: deletebyid peliculas');
        try {
            let pool = await sql.connect(config);
            let result = await pool.request()
            .input('pId', sql.Int, id)
            .query('DELETE FROM Peliculas WHERE id = @pId');
            rowsAffected = result.rowsAffected;
        } catch (error) {
            console.log(error);
        }
        return rowsAffected;
    }
}

export default PeliculasService;

