//: [Previous](@previous)

struct Wizard {
    static var commonMagicalIngredients: [String] {
        return ["Polyjuice Potion",
        "Eye of Haystack Needle",
        "The Force"]
    }
    
    var firstName: String{
        willSet{
            print("\(firstName) will be set to \(newValue)")
        }
        didSet{
            if firstName.contains(" ") {
                print("No spaces allowed! \(firstName) is not a first name. Reverting name to  \(oldValue)")
                firstName = oldValue
            }
        }
    }
    var lastName: String
    
    var fullName: String {
        get { return "\(firstName) \(lastName)" }
        set{
            let nameSubstrings = newValue.split(separator: " ")
            
            guard  nameSubstrings.count >= 2 else {
                print("\(newValue) is not a full name.")
                return
            }
            
            let nameStrings = nameSubstrings.map(String.init)
            firstName = nameStrings.first!
            lastName = nameStrings.last!
        }
    }
    
    lazy var magicalCreature = ""
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName  = lastName
    }
}

var wizard = Wizard.init(firstName: "Gandalf",lastName: "Greyjoy")
wizard.firstName = "Harry"
wizard.lastName = "Potter"

wizard.fullName = "Draco Malfoy"
//: [Next](@next)
