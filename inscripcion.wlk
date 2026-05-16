import ciudades.*
import vehiculos.*
object centroDeInscripcion {

    const inscripciones =[]
    const inscriptos = []
    const rechazados =[]
    var ciudadDeCarrera = buenosAires

    method ciudadDeCarrera(ciudad){
        ciudadDeCarrera = ciudad
    }

    method inscriptos()= inscriptos

    method inscribirVehiculosSiPuede(ciudad){
        inscripciones.forEach({i => self.puedeInscribirlo(i, ciudad)})
    }

    method puedeInscribirlo(vehiculo, ciudad){
        if (ciudad.puedeLlegar(vehiculo)){
            inscriptos.add(vehiculo)
        } else{
            rechazados.add(vehiculo)
        }
    }

    method incorporarRechazadosANuevaSede(ciudad){
        rechazados.forEach({r => self.puedeInscribirlo(r, ciudad)})
    }

    

}