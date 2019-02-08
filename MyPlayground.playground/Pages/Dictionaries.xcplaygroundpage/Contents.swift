//: [Previous](@previous)
var emptyDictionary: [String: Int] = [:]

var namesAndPets = [
    "Ron" : "🐁 Rat",
    "Rincewind" : "🛄 Luggage",
    "Thor" : "🔨Hammer",
    "Goku" : "☁️ Flying Nimbus"
]

print(namesAndPets)

namesAndPets["Rincewind"]
namesAndPets["sky"]


let calvinPer = namesAndPets["Calvin"] ?? "No pet for Calvin"


namesAndPets.isEmpty
namesAndPets.count


//namesAndPets.updateValue("Owl", forKey: :"Ron")

namesAndPets["Ron"] = "🦉 Owl"
namesAndPets["Calvin"] = "🐯 Tiger"

//namesAndPets.removeValue(forKey: "Goku")
namesAndPets["Goku"] = nil


for (character, pet) in namesAndPets{
    print("\(character) has a \(pet)")
}

for (name, _) in namesAndPets{
    print(name)
}

for pet in namesAndPets.values {
    print(pet)
}


//: [Next](@next)
