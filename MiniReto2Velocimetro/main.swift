//
//  main.swift
//  MiniReto2Velocimetro
//
//  Created by Arturo Barreto Villafán on 11/6/15.
//  Copyright © 2015 Arturo Barreto Villafán. All rights reserved.
//

import Foundation

// enumeracion entera

enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    // inicializador
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
        
        
    }
}
// clase auto
class Auto {
        var velocidad  = Velocidades(velocidadInicial: Velocidades.Apagado)
    // inicializador
    init(velocidad: Velocidades){
        self.velocidad = velocidad
    }
    
    

    func cambioDeVelocidad() -> ( actual : Int, velocidadString : String ){
        var actual  = 0
        var velocidadString  = " "
        
        actual = velocidad.rawValue
        
        switch velocidad {
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
            velocidadString = "Apagado"
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            velocidadString = "Velocidad Baja"
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            velocidadString = "Velocidad Media"
        case .VelocidadAlta:
            velocidad = Velocidades.Apagado
            velocidadString = "Velocidad Alta"
        }
        
        let resultado = (actual, velocidadString)
        return resultado
    }
    
// tube algunas dudas sobre el trabajo. pues en el ejemplo de ellos sale diferente cuando la velocidadAlta la cambias a velocidadMedia no retorna los valores como ellos los imprimen asi que hice otra funcion cambiando la velodidadAlta por la VelocidadMedia
    func cambioDeVelocidadNueva() -> ( actual : Int, velocidadString : String ){
        var actual  = 0
        var velocidadString  = " "
        
        actual = velocidad.rawValue
        
        switch velocidad {
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
            velocidadString = "Apagado"
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            velocidadString = "Velocidad Baja"
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            velocidadString = "Velocidad Media"
        case .VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            velocidadString = "Velocidad Alta"
        }
        let resultado = (actual, velocidadString)
        return resultado
    
}
}
// el auto inicia en Apagado pero puede cambiar la velocidad a las distintas velocidades de la enumeración

var auto = Auto(velocidad: Velocidades.Apagado)



// for que recorre el cambio de velocidad
for i in 1...20{
    var retorno = auto.cambioDeVelocidad()
    print("\(retorno.actual), \(retorno.velocidadString)")
}

// for de la nueva velocidad como decia el ejemplo 
print("cambio con la nueva velocidad")
for x in 1...20{
    var retorno = auto.cambioDeVelocidadNueva()
    print("\(retorno.actual), \(retorno.velocidadString)")
}



