//: Playground - noun: a place where people can play

import UIKit


// Enumeracion Velocidades

enum Velocidades : Int {

    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120

    init (velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
}

// Clase Auto

// Se corrige el error en el texto del tutor donde dice que de VELOCIDADALTA pasa a VELOCIDADMEDIA, pero en el ejemplo de 5 iteraciones se ve claramente que de VELOCIDADALTA pasa a APAGADO.

class Auto {
    
    var velocidad : Velocidades
  
    init( velocidadInicial : Velocidades){
        self.velocidad = velocidadInicial
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
  
        if velocidad.rawValue == 0{
            velocidad = Velocidades.VelocidadBaja
        } else if velocidad.rawValue == 20{
            velocidad = Velocidades.VelocidadMedia
        } else if velocidad.rawValue == 50{
            velocidad = Velocidades.VelocidadAlta
        } else if velocidad.rawValue == 120{
            //Error en el texto del tutor... se corrige a APAGADO
            velocidad = Velocidades.Apagado
        }
      
        return (velocidad.rawValue, String(velocidad))
    }
    
}

// Iteracion 20 veces

var velocidad : Velocidades = Velocidades.Apagado

var auto = Auto(velocidadInicial: velocidad)

for numero in 1...20{

    //Se envia a la consola
    print(String(numero) + ". " + String(velocidad.rawValue) + ", " + String(velocidad))
    
    auto.cambioDeVelocidad()
    
    velocidad = auto.velocidad
    
}





