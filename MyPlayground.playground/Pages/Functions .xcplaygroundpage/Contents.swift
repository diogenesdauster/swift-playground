//: [Previous](@previous)

func prinMeow(){
    print("Meow!")
}

prinMeow()

func printMultipleOfFive(multiplier: Int){
    print("5 * \(multiplier) = \(5 * multiplier)")
}

printMultipleOfFive(multiplier: 10)

func printMultipleOf(number: Int, multiplier: Int = 1 ){
    print("\(number) * \(multiplier) = \(number * multiplier)")
}

printMultipleOf(number: 4,multiplier: 2)
printMultipleOf(number: 4)

func multiply(_ factor1: Int, _ factor2: Int) -> Int {
    return factor1 * factor2
}

let result = multiply(7, 3)
print(result)

func multiplyAndDivide(_ number: Int, by factor: Int) -> (product: Int, quotient: Int) {
    return (number * factor, number / factor)
}

let results = multiplyAndDivide(4, by: 2)
let (product, quotient) = results
product
quotient
//: [Next](@next)
