import UIKit

//Array
//Conjuntos
//Diccionarios

// Las colecciones, nos van a permitir tener mas de 1 valor en una variable.
// Existen diversos tipos de colecciones, cuidado con el termino.

//ARRAY
var someInts = [Int]()
someInts.count
someInts.append(31)
someInts.count
someInts = []
someInts.count


var someDoubles = Array(repeating: 3.141592, count: 3)
someDoubles.count
var moreDoubles = Array(repeating: 2.5, count: 4)
var aLotOfDoubles = someDoubles + moreDoubles
aLotOfDoubles.count
var shoppingList : [String] = ["Papas", "Pimiento rojo", "queso rallado", "Carne picada", "Cebolla", "Pera"]
shoppingList.count



///////////////////////////////////////////////////////////////////////////////////////////////////
// Ejercicios: Crear un array con nombres

var myArrayCollectionsString : [String] = ["Martin", "Ricardo", "Juan", "Sofia", "María", "Pedro", "Luis"]
var myArrayCollectionsInt : [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

///////////////////////////////////////////////////////////////////////////////////////////////////

if shoppingList.isEmpty {
    print("La lista de la compra está vacía")
} else{
    print("Mandemos a Ricardo a comprar")
}

shoppingList.append("Agua")
shoppingList.count

shoppingList += ["Zanahoria", "Leche", "Manteca"]
shoppingList.count

var firstElement = shoppingList[0]
shoppingList[0] = "Huevos"
shoppingList
shoppingList[5]
shoppingList[4...6]
shoppingList[3...5] = ["aceite", "Pimienta", "Sal", "Nuez moscada", "Papa"]
shoppingList

let pepper = shoppingList.remove(at: 3)
shoppingList

let _ = shoppingList.removeLast()
shoppingList

for item in shoppingList{
    print(item)
}

for (idx, item) in shoppingList.enumerated(){
    print("Item \(idx+1): \(item) ")
}

///////////////////////////////////////////////////////////////////////////////////////////////////
// Ejercicio: Tomar un array, enumerar el items y que continen ese items, para ver que contiene ese items. para repasar los bucles.
for (index, items) in myArrayCollectionsString.enumerated(){
    print("Item \(index+1): \(items)")
}


///////////////////////////////////////////////////////////////////////////////////////////////////


//Conjunto (Set)
var letters = Set<Character>()
letters.count
letters.insert("a")
letters.insert("h")
letters.insert("b")
letters


var favouriteTools : Set<String> = ["IOS", "Swift", "Xcode"]
favouriteTools.count


if favouriteTools.isEmpty{
    print("No hay herramientas favoritas")
}

favouriteTools.insert("GitHub")

if let removedGame = favouriteTools.remove("GitHub"){
    print("Elimine de la lista, a \(removedGame)")
}

if favouriteTools.contains("Xcode"){
    for vg in favouriteTools.sorted() {
        print("Me encanta esa herramienta \(vg)")
    }
}

print(favouriteTools)

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let primeNumbers: Set = [2,3,5,7]

//A union B = elementos que son o bien de A, o bien de B o de los dos
oddDigits.union(evenDigits).sorted()
//A intersección B = elementos que son a la vez de A y de B
oddDigits.intersection(evenDigits)
evenDigits.intersection(primeNumbers).sorted()
oddDigits.intersection(primeNumbers).sorted()

// A - B = elementos que son de A pero no de B
oddDigits.subtracting(primeNumbers).sorted()

// A + B = (A-B) union (B-A)
oddDigits.symmetricDifference(primeNumbers).sorted()


let houseAnimals:Set = ["🐶", "😹"]
let farmAnimals:Set = ["🐮", "🐔", "🐑", "🐶", "😹"]
let cityAnimals:Set = ["🐁", "🕊"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
//A y B son disjuntos si su intersección es vacía
farmAnimals.isDisjoint(with: cityAnimals)



// Diccionarios [k1:v1, k2:v2, ....]

var namesOfIntegers = [Int : String]()
namesOfIntegers[15] = "quince"
namesOfIntegers = [:]

var airports: [String: String] = ["YYZ": "Toronto",
                                  "DUB": "Dublin",
                                  "PMI": "Palma de Mallorca"]

airports.count

airports.isEmpty
airports["LHR"] = "London City Airport"
airports
airports["LHR"] = "London Heathrow"
airports

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("El aeropuerto tenia antiguamente el nombre de \(oldValue)")
}
airports

if let airportName = airports["DUB"]{
    print("El aeropuerto de DUB es: \(airportName)")
}

airports["PMI"] = nil
airports

if let removedAirport = airports.removeValue(forKey: "DUB"){
    //usar la variable removed airport
}
airports

for (key, value) in airports {
    print("\(key) - \(value)")
}

for airportKey in airports.keys{
    print(airportKey)
}

for airportName in airports.values{
    print(airportName)
}

let airportKeys = [String](airports.keys.sorted())
let airportNames = [String](airports.values.sorted())
