//: [Previous](@previous)

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Student: Person {
    var grades: [Grade] = []
}

let jon = Person(firstName: "Jon", lastName: "Snow")
let jane = Student(firstName: "Jane", lastName: "Snane")

jon.firstName
jane.firstName

let historyGrade = Grade(letter: "B", points: 9, credits: 3)
jane.grades.append(historyGrade)


class SchoolBandMember: Student {
    var minimumPracticeTime = 2
}

class StudentAthlete: Student {
    var isEligible: Bool {
        return grades.filter {$0.letter == "F"} . count < 3
    }
    
    override var grades: [Grade] {
//        get { return super.grades }
//        set {
//            super.grades = newValue
//            if !isEligible {
//                print("It's time to study")
//            }
//        }
        didSet {
          if !isEligible {
             print("It's time to study")
          }
        }
    }
}

let jessy = SchoolBandMember(firstName: "Jessy", lastName: "Catterwual")
let marty = StudentAthlete(firstName: "Marty", lastName: "McWolfy")

//let array = [jon, jane, jessy, marty] a person array
let array = [jane, jessy, marty] // a student array

let student = marty as Student
let athlete = student as! StudentAthlete // make sure that you have the correctly value when you using force casting
let utterFailureGrade = Grade(letter: "F", points: 0, credits: 0)
athlete.grades.append(utterFailureGrade)
athlete.grades.append(utterFailureGrade)
athlete.grades.append(utterFailureGrade)

func getEveningActivity(student: Student) -> String {
//    if let bandMender = student as? SchoolBandMember {
//        return "Practicing for at least \(bandMender.minimumPracticeTime)"
//    }else{
//        return "Hitting the books!"
//    }
    
    guard let bandMender = student as? SchoolBandMember else {
        return "Hitting the books!"
    }
    
    return "Practicing for at least \(bandMender.minimumPracticeTime)"
}

getEveningActivity(student: jessy)
getEveningActivity(student: jane)
//: [Next](@next)
