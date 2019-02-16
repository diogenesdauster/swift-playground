//: [Previous](@previous)

//struct Actor {
//    let name: String
//    var filmography: [String] = []
//
//    mutating func signOnForSequel(franchiseName: String){
//        filmography.append("Upcoming \(franchiseName) sequel")
//    }
//}
//
//var gotgStar = Actor(name: "Zoe Saldana", filmography: ["Guardians of Galaxy"])
//
//gotgStar.filmography.append("Avatar")
//
//var startTrekStar = gotgStar
//startTrekStar.filmography.append("Star Trek")
//
//var avatarStar = startTrekStar
//
//for franchiseName in avatarStar.filmography {
//    avatarStar.signOnForSequel(franchiseName: franchiseName)
//}

class Actor {
    let name: String
    var filmography: [String] = []
    
    init(name: String, filmography: [String]) {
        self.name = name
        self.filmography = filmography
    }
    
    func signOnForSequel(franchiseName: String){
        filmography.append("Upcoming \(franchiseName) sequel")
    }
}

let gotgStar = Actor(name: "Zoe Saldana", filmography: ["Guardians of Galaxy"])

gotgStar.filmography.append("Avatar")

let startTrekStar = gotgStar
startTrekStar.filmography.append("Star Trek")

let avatarStar = startTrekStar

for franchiseName in avatarStar.filmography {
    avatarStar.signOnForSequel(franchiseName: franchiseName)
}

startTrekStar
avatarStar
gotgStar
//: [Next](@next)
