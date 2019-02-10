//: [Previous](@previous)

var names = ["Zeus", "Poseidon", "Ares", "Demeter"]

names.sort()

names.sort(by: { (a, b) -> Bool in
    a > b
})

let longToShortNames = names.sorted {
    $0.count > $1.count
}

longToShortNames
names

var prices = [1.50, 10.00, 4.99, 2.39, 8.19]

let largePrices = prices.filter { price -> Bool in
    return price > 5
    
}

var arrayForFilteredResults: [Double] = []
for price in prices where price > 5 {
    arrayForFilteredResults.append(price)
}

arrayForFilteredResults


//let salePrices = prices.map {
//    $0 * 0.9
//}

let salePrices = prices.map { price -> Double in
    return price * 0.9
}



var arrayForSalePrices: [Double] = []
for price in prices {
    arrayForSalePrices.append(price * 0.9)
}

arrayForSalePrices


//let sum = prices.reduce(0) { result, price -> Double in
//    return result + price
//}

let sum = prices.reduce(0, +)

var doubleForSum = 0.0
for price in prices {
    doubleForSum += price
}
doubleForSum


var stock = [1.50: 5, 10.00: 2, 4.99: 20, 2.30: 5, 8.19: 30]


let stockSum = stock.reduce(into: []) { result, pair in
    result.append(pair.key * Double(pair.value))
}


var arrayForStockValues: [Double] = []
for (price, quantity) in stock {
    let value = price * Double(quantity)
    arrayForStockValues.append(value)
}
arrayForStockValues


let userInput = ["moew!", "15", "37.5", "seven"]

let validInput = userInput.compactMap { input in
    Int(input)
}

var arrayForValidInput: [Int] = []
for input in userInput {
    guard let input = Int(input) else {
        continue
    }
    arrayForValidInput.append(input)
}


let arrayOfDwarfArrays = [
    ["Sleepy", "Grumpy", "Doc"],
    ["Thorin", "Nori"]
]

let dwarvesAfterM = arrayOfDwarfArrays.flatMap { array -> [String] in
    return array.filter{ (dwarf) -> Bool in
        dwarf > "M"
    }
}

let sortedDwarves = dwarvesAfterM.sorted()
//: [Next](@next)
