import inscripcion.*
object carrera {
    
    const corredores = centroDeInscripcion.inscriptos()

    method irACiudad(ciudad){
        corredores.forEach({c => c.desgaste()})
    }

    method corredorMasRapido(){
        
    }

    method ganadorDeLaCarrera(){
        return corredores.max({c => c.tiempoPorViaje()})
    }



}