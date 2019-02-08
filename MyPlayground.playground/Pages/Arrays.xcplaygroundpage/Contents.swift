//: [Previous](@previous)

//let pastries: [String] = ["cookie","cupcake","conout","pie"]

var pastries: [String] = []
pastries.append("cookie")
pastries += ["cupcake","donout","pie"]

//pastries.removeAll()
pastries.isEmpty

pastries.count
if let first = pastries.first,
    let min = pastries.min(),
    let max = pastries.max() {
    print(first, min, max)
}

let firstElement = pastries[0]
let firstThree = Array(pastries[1...3])


pastries.contains("donut")
pastries.contains("lasagna")

pastries.insert("tart", at: 0)

let removedTwo = pastries.remove(at: 2)
let removedLast = pastries.removeLast()

pastries[0...1] = ["brownie","fritter","tart"]

pastries.swapAt(1, 2)

for (index,pastry) in pastries.enumerated() {
    print(index,pastry)
}
//: [Next](@next)
