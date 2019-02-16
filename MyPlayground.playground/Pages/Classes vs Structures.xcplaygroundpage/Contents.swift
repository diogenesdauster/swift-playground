//: [Previous](@previous)

struct Actor {
    let name: String
    var filmography: [String] = []
    
    mutating func signOnForSequel(franchiseName: String){
        filmography.append("Upcoming \(franchiseName) sequel")
    }
}

var gotgStar = Actor(name: "Zoe Saldana", filmography: ["Guardians of Galaxy"])

gotgStar.filmography.append("Avatar")

var startTrekStar = gotgStar
startTrekStar.filmography.append("Star Trek")

var avatarStar = startTrekStar

for franchiseName in avatarStar.filmography {
    avatarStar.signOnForSequel(franchiseName: franchiseName)
}

//: [Next](@next)
