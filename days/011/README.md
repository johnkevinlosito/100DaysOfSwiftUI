# Day 11 – access control, static properties and methods, and checkpoint 6

_[https://www.hackingwithswift.com/100/swiftui/11](https://www.hackingwithswift.com/100/swiftui/11)_

## Access control

Access control controls how struct's properties and methods can be accessed from outside the struct.

Swift offers several levels of access control.

- `public` access - cannot be used outside the struct
- `fileprivate` access - cannot be used outside the current file
- `private` access - usable anywhere
- `private(set)` access - can be read anywhere, but only the struct's method can write to it.

```swift
struct BankAccount {
    private var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}
```

## Static properties and methods

If you want to use property or method directly, i.e. storing fixed data that needs to be accessed in various places, use `static` on the properties and methods.

```swift
struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

print(AppData.version)
```

## Checkpoint 6

Create a struct to store information about a car, including its model, number of seats, and current gear, then add a method to change gears up or down. Have a think about variables and access control: what data should be a variable rather than a constant, and what data should be exposed publicly? Should the gear-changing method validate its input somehow?

## Solution [here](Checkpoint6.playground/Contents.swift)
