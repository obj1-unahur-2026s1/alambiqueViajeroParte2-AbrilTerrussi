import inscripcion.*

object alambiqueVeloz {
    const rapido = true
    var combustible = 20
    const consumoPorViaje = 10
    const patente = "AB123JK"
    method puedeFuncionar() = combustible >= consumoPorViaje
    method desgaste() {
        combustible = combustible - consumoPorViaje
    }

    method tiempoPorViaje()= 20
    method rapido() = rapido
    method patenteValida() = patente.head() == "A"

    method inscribirse(){
        centroDeInscripcion.inscriptos.add(self)
    }
}

object antigualla {
    var gangsters = 7
    method puedeFuncionar() = gangsters.even()
    method rapido() = gangsters > 6
    method desgaste(){
        gangsters = gangsters -1
    }
    method patenteValida() = chatarra.rapido() 

    method tiempoPorViaje(){
        if (self.rapido()){
            return 30
        }else{
            return 40
        }
    }

    method inscribirse(){
        centroDeInscripcion.inscriptos.add(self)
    }
}
object chatarra {
    var cañones = 10
    var municiones = "ACME"
    method puedeFuncionar() = municiones == "ACME" and cañones.between(6,12)
    method rapido() = municiones.size() < cañones
    method desgaste(){
        cañones = (cañones / 2).roundUp(0)
        if (cañones < 5 )
          municiones = municiones + " Obsoleto"
    }
    method patenteValida() = municiones.take(4) == "ACME" 
    method cañones() = cañones

    method tiempoPorViaje(){
        if (self.rapido()){
            return 15
        }else {
            return 20
        }
    }

    method inscribirse(){
        centroDeInscripcion.inscriptos.add(self)
    }

}

object convertible{
    var convertido = antigualla
    method puedeFuncionar() = convertido.puedeFuncionar() 
    method rapido() = convertido.rapido()
    method desgaste(){
        convertido.desgaste()
    }
    method convertir(vehiculo){
        convertido = vehiculo
    }
    method patenteValida() = convertido.patenteValida()
    
    method inscribirse(){
        centroDeInscripcion.inscriptos.add(self)
    }

    method tiempoPorViaje(){
        if(self.rapido()){
            return 45
        }
        else{
            return 50
        }
    }
}

object moto{

    method rapido() = true
    method puedeFuncionar() = not self.rapido()
    method desgaste() { }
    method patenteValida() = false

    method inscribirse(){
        centroDeInscripcion.inscriptos.add(self)
    }
    method tiempoPorViaje() = 25
}