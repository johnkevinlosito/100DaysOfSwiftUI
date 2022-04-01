# Day 13 – protocols, extensions, and checkpoint 8

_[https://www.hackingwithswift.com/100/swiftui/13](https://www.hackingwithswift.com/100/swiftui/13)_

## Protocols

`Protocols` define a blueprint of methods and properties that we expect a data type to support. The protocol can then be adopted or conformed by a `class`, `struct`, or `enum`. The protocol can then be adopted by a class, structure, or enumeration

```swift
protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }

    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1

    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)

```

## Extensions

Extensions let us add functionality to any type, whether we created it or someone else created it – even one of Apple’s own types.

```swift
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmed()

```

## Checkpoint 8

Make a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it. Your protocol should require the following:

1. A property storing how many rooms it has.
2. A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
3. A property storing the name of the estate agent responsible for selling the building.
4. A method for printing the sales summary of the building, describing what it is along with its other properties.

## Solution [here](Checkpoint8.playground/Contents.swift)
