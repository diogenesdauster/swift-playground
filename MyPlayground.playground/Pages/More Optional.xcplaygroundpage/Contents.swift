//: [Previous](@previous)
var result:Int? = 30
print(result)

var catName: String? = "Princess Orzma"
var catAge: Int? = 7

//var unwrappedCatName = catName!
//print("The cat's name is \(unwrappedCatName)")


if let catName = catName,
    let catAge = catAge {
    print("The cat is \(catName) and she is \(catAge)")
} else {
    print("No cat name or cat age")
}


func printCatInfo(catName: String?, catAge: Int?){
    guard let catName = catName,
        let catAge = catAge else {
        print("No cat name or cat age")
            return
    }
    print("The cat is \(catName) and she is \(catAge)")
}

printCatInfo(catName: "Ana", catAge: 10)
printCatInfo(catName: nil, catAge: 10)


var optionalInt: Int? = nil //10
var requiredResult = optionalInt ?? 0
//: [Next](@next)
