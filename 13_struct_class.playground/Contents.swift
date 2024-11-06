import UIKit

//Struct vs Class tambien conocidos como helpers

//las structs son tipos de valor, lo que significa que al asignarlas o pasarlas, se copia su contenido.
struct SomeStruct {
    //La definición de la estructura aquí
}

//Las classes son tipos de referencia, por lo que al asignarlas o pasarlas, se comparte la misma instancia.
class SomeClass {
    //La definición de la clase aquí
}


struct ButtonSize {
    var width = 20
    var height = 10
}

class ButtonLogin {
    var resolution = ButtonSize()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = ButtonSize()// struct
let someVideoMode = ButtonLogin()// class

print(someResolution.width)
someVideoMode.resolution.width = 1280
print(someVideoMode.resolution.width)

someVideoMode.frameRate = 30.0
print(someVideoMode.frameRate)

let ButtonSubmit = ButtonSize(width: 25, height: 13)
ButtonSubmit.width
ButtonSubmit.height

let ButtonMenu = ButtonSize(width: 30, height: 15)

var cinema = ButtonMenu
print("\(cinema.width) x \(cinema.height)")
cinema.width = 2048
print("\(cinema.width) x \(cinema.height)")
print("\(ButtonMenu.width) x \(ButtonMenu.height)")

//---------------------------------------------------------





enum CompassPoint{
    case north, south, east, west
}

var currentDirection = CompassPoint.north
var oldDirection = currentDirection
currentDirection = .south

print(currentDirection)
print(oldDirection)


let tenEighty = ButtonLogin()
tenEighty.resolution = ButtonMenu
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
tenEighty


if tenEighty === alsoTenEighty{ //!==
    print("Son el mismo objeto")
}else{
    print("Son diferentes")
}
