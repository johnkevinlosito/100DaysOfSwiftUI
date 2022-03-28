import Cocoa

struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)

print(red.title)

red.printSummary()

struct Employee {
    let name: String
    var remaining: Int

    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        get {
               vacationAllocated - vacationTaken
           }

           set {
               vacationAllocated = vacationTaken + newValue
           }
    }
    mutating func takeVacation(days: Int) {
        if remaining > days {
            remaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(remaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Sterling Archer", remaining: 14, vacationAllocated: 14)
archer.takeVacation(days: 5)
print(archer.remaining)
archer.vacationTaken += 4
print(archer.vacationRemaining)
archer.vacationTaken += 4
print(archer.vacationRemaining)

archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated)


struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player.number)
 
