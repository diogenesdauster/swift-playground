//: [Previous](@previous)

class Person {
    let name: String
    weak var bestBuddy: Person?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("the memory for \(name) has been deallocated!")
    }
}

var jack: Person? = Person(name: "Jack Spearow")
var barbosa: Person? = Person(name: "Capitan Barbosa")

jack?.bestBuddy = barbosa
barbosa?.bestBuddy = jack

jack = nil
barbosa = nil


//: [Next](@next)
