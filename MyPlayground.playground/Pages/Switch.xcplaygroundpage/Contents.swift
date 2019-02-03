//: [Previous](@previous)

let number = Int.max
var numberDescription: String = "" // inicializo pq o playground não funciona mas poderia não inicializar e deixar como let

switch number {
case 0:
    numberDescription = "Zero"
case 1...9:
    numberDescription = "Between 1 and 9"
case let negativeNumber where negativeNumber < 0:
    numberDescription = "Negative"
case _ where number > .max / 2:
    numberDescription = "Very large!"
default:
    numberDescription = "No description"
}

var numberIsEven: Bool = false // inicializo pq o playground não funciona mas poderia não inicializar e deixar como let

switch number % 2 {
case 0:
    numberIsEven = true
default:
    numberIsEven = false
}

let animalString = "Elephant"
var isHousePet :Bool = false // inicializo pq o playground não funciona mas poderia não inicializar e deixar como let

switch animalString {
case "Dog", "Cat", "Potbellied Hamster":
    isHousePet = true
default:
    isHousePet = false
}


let coordinates = (0.0, 17.0)
var pointCategory: String = "" // inicializo pq o playground não funciona mas poderia não inicializar e deixar como let



switch coordinates {
case (0,0):
    pointCategory = "Origin"
case (let x, 0):
    pointCategory = "On the x-axis at \(x)"
case (0, let y):
    pointCategory = "On the y-axis at \(y)"
case let(_, y) where coordinates.0 == y:
    pointCategory = "Along y = x"
case _ where coordinates.0 == coordinates.1:
    pointCategory = "Along y = x"
case let(x, y) where y == x * x:
    pointCategory = "Along y = x ^ 2"
case let (x, y):
    pointCategory = "No zero coordinates x = \(x), y = \(y)"
}
//: [Next](@next)
