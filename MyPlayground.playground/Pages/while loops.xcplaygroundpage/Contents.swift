//: [Previous](@previous)
var i = 1

while i < 10 {
    print(i)
    i += 1
}

print("--- --- ---")

i = 10
repeat {
    print(i)
    i += 1
} while i < 10
print("--- --- ---")

i = 5
repeat {
    print(i)
    if i == 5 {
        break
    }
    i += 1
} while i < 10

//: [Next](@next)
