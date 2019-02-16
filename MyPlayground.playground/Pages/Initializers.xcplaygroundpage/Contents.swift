//: [Previous](@previous)

class Person {
    var firstName: String
    var lastName: String
    
    required init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Student: Person {
    var grades: [String] = []
    
//    convenience init(transfer: Student) {
//        self.init(firstName: transfer.firstName, lastName: transfer.lastName)
//        self.grades = transfer.grades
//    }
}

extension Student {
    convenience init(transfer: Student) {
        self.init(firstName: transfer.firstName, lastName: transfer.lastName)
        self.grades = transfer.grades
    }
}

class StudentAthlete: Student {
    var sports: [String]
    
    init(firstName: String, lastName: String, sports: [String]) {
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName)
    }
//    override init(firstName: String, lastName: String) {
//        self.sports = []
//        super.init(firstName: firstName, lastName: lastName)
//    }

//    required init(firstName: String, lastName: String) {
//        self.sports = []
//        super.init(firstName: firstName, lastName: lastName)
//    }

    required convenience init(firstName: String, lastName: String) {
        self.init(firstName: firstName, lastName: lastName, sports:[])
    }

    convenience init(tranfer: StudentAthlete) {
        self.init(firstName: tranfer.firstName, lastName: tranfer.lastName, sports: tranfer.sports)
        grades = tranfer.grades
    }
    
    
}

let Dan = StudentAthlete(firstName: "Daniel", lastName: "Ruettiger",sports: ["Football"])
StudentAthlete(firstName: "Neymar", lastName: "Junior")

let newSchool = StudentAthlete(tranfer: Dan)
//: [Next](@next)
