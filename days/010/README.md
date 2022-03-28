# Day 10 – structs, computed properties, and property observers

_[https://www.hackingwithswift.com/100/swiftui/10](https://www.hackingwithswift.com/100/swiftui/10)_

## Structs

Like classes and enums, structs are way to implement a custom type in Swift, complete with their own variables and their own functions.

```swift
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
```

## Mutating functions

If you want to allow functions to change the struct's data, we can add the `mutating` keyword to any function.

```swift
struct Employee {
    let name: String
    var vacationRemaining: Int

    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}
```

## Computed Properties

Structs can have two kinds of property: a stored property is a variable or constant that holds a piece of data inside an instance of the struct, and a computed property calculates the value of the property dynamically every time it’s accessed.

```swift
struct Employee {
    let name: String
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
}

var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated)
```

Getters denoted by `get` reads and computes data, while setters denoted by `set` writes/updates the data directly based on the value the user was trying to assign to the property, using the name `newValue`.

## Property observers

Property observers are blocks of code that run when properties changed. A `didSet` observer to run when the property just changed, and a `willSet` observer to run before the property changed.

```swift
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
```

## Custom initializer

To create custom initializer, use the `init` function without the `func` keyword:

```swift
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
```
