import UIKit

// Enumeracion Velocidades
enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    // Inicializa las Velocidades
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}

// Clase Auto
class Auto {
    var velocidad: Velocidades
    
    // Inicializa el Auto
    init( ) {
        self.velocidad = Velocidades.init(velocidadInicial: .Apagado)
    }
    
    // Funcion que cambia la velocidad de un auto
    func cambioDeVelocidad( ) -> (actual: Int, velocidadEnCadena: String) {
        var mensaje = ""
        let velociadActual = velocidad.rawValue
        if velocidad == Velocidades.Apagado {
            mensaje = "Apagado"
            velocidad = Velocidades.VelocidadBaja
        } else if velocidad == Velocidades.VelocidadBaja {
            mensaje = "Velocidad Baja"
            velocidad = Velocidades.VelocidadMedia
        } else if velocidad == Velocidades.VelocidadMedia {
            mensaje = "Velocidad Media"
            velocidad = Velocidades.VelocidadAlta
        } else if velocidad == Velocidades.VelocidadAlta {
            mensaje = "Velocidad Alta"
            velocidad = Velocidades.VelocidadMedia
        }
        return (velociadActual, mensaje)
    }
}

var auto = Auto()

for _ in 0..<20 {
    let (velocidad, mensaje) = auto.cambioDeVelocidad()
    print("\(velocidad), \(mensaje)")
}
