import UIKit

let b = 10
var a = 5
a = b // Cambio de una variable.

let (x,y) = (1,2) // Variable Tubla con una constante.

//let 2 = z  No se puede por que 2 esta definido por un numero 

if a == b {
  print("Los valores de a y b son iguales")
}

1+2
5-3
2*3
10.0/2.5

"Hello " + "World"


//D/d -> D == d*c+r
// D == d*c+r -> formula de uclive [https://es.khanacademy.org/computing/computer-science/cryptography/modarithmetic/a/the-euclidean-algorithm]
9/4 // Se obtiene el cociente unicamente
9%4 // Se obtiene el resto

9 == 4*2+1 // true


-9%4 // -9 == -2*4 + (-1)


//El operador unario lo que hace es pasar de positivo a negativo, de negativo a positivo.
let five = 5
let minusFive = -five
let plusFive = -minusFive

let minusSix = -6
let alsoMinusSix = +minusSix // el + es unario, sin embargo no invierte el resultado, y sirve para incrementar un determinado valor. Lo mismo con el - 

// Ejemplo:
var number = 5
number += 3 //number = number + 3
number -= 2 //number = number - 2

// Buena practica indentar el codigo.
1 == 1
1 == 2
1 != 2
2 > 1
2 < 1
2 >= 1
1 >= 1
2 <= 1

let name = "Ricardo Celis"

if name == "Juan Gabriel" {
    print("Bienvenido \(name), eres invitado a la fiesta")
}else{
    print("Cuidado, ha aparecido un \(name) salvaje")
}


(1, "Juan Gabriel") < (2, "Ricardo Celis") // true
(3, "Juan Gabriel") < (3, "Ricardo Celis") // es true por que la j en el alfabeto esta antes que la r.
(3, "Ricardo") < (3, "Juan Gabriel") // false
(4, "perro") == (4, "perro") // true

// ("perro", false) < ("perro", true) // no se puede aplicar a valores buleanos.
("perro", false) == ("perro", true) // false

// Ejercicio: 
(26, "Martin Aguilar") < ( 31, "Juan Gabriel") // true
(26, "Martin Aguilar") > ( 31, "Juan Gabriel") // false
(26, "Martin Aguilar") == ( 31, "Juan Gabriel") // false


/* Operador ternario: */

let contentHeight = 40
var hasImage = true
var rowHeight = 0

rowHeight = contentHeight + (hasImage ? 50 : 10) // sugar syntax




let defaultAge = 18
var userAge: Int?

userAge = 31

var ageToBeUsed = userAge ?? defaultAge
// ageToBeUsed = (userAge != nil ? userAge! : defaultAge)

let defaultColorName = "red"
var userColorName: String? = "green"

var colorNameToUse = userColorName ?? defaultColorName

for idx in 1...5 {
    print(idx)
}

for idx in 1..<5{
    print(idx)
}

let names = ["Ricardo", "Juan Gabriel", "Pedro"]
for i in 0..<names.count{
    print("La persona \(i+1) se llama \(names[i])")
}

for name in names[1...]{
    print(name)
}

for name in names[..<2]{
    print(name)
}

let range = ...5 // -infinity...5
range.contains(7)
range.contains(4)
range.contains(-2)


let allowEntry = false

if !allowEntry{
    print("ACCESO DENEGADO")
}


let enterDoorCode = false
let passRetinaScan = true

if enterDoorCode && passRetinaScan { //AND
    print("Bienvenido a la empresa")
}else{
    print("ACCESO DENEGADO")
}

let hasMoney = false
let hasInvitation = false
if hasMoney || hasInvitation{ //OR
    print("Bienvenido a la fiesta!")
} else{
    print("No eres bienvenido aquí...")
}


if enterDoorCode && passRetinaScan ||
    hasMoney || hasInvitation{
    print("Has entrado")
} else{
    print("Acceso denegado")
}
