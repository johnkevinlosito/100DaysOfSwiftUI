# Day 14 – optionals, nil coalescing, and checkpoint 9

_[https://www.hackingwithswift.com/100/swiftui/14](https://www.hackingwithswift.com/100/swiftui/14)_

## Optionals

Optional handles the absence of a value. Optionals say either "there is a value" or "there isn't a value at all (`nil`)".

```swift
var username: String? = nil
var password: String?

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}
```

## If let and guard let

The `if let` unwraps the optional value and checks if it has a value, then run some code. The `guard let` on the other hand runs some code if the optional didn’t have a value.

```swift
var myVar: Int? = 3

if let unwrapped = myVar {
    print("Run if myVar has a value inside")
}

guard let unwrapped = myVar else {
    print("Run if myVar doesn't have a value inside")
}
```

If you use `guard` in a function, you should use `return` if the check fails.

```swift
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}

printSquare(of: nil)
printSquare(of: 2)
```

## Nil Coalescing

Nil coalescing lets us unwrap an optional and provide a default value if the optional was empty.

```swift
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"
```

## Optional Chaining

Optional chaining is a simplified syntax for reading optionals inside optionals. This is a nice way to conduct chained property access when something along the way is an optional

```swift
let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")
```

## Checkpoint 9

Write a function that accepts an optional array of integers, and returns one randomly. If the array is missing or empty, return a random number in the range 1 through 100.

## Solution [here](Checkpoint9.playground/Contents.swift)
