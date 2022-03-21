# Day 4 – Type annotations and checkpoint 2

*[https://www.hackingwithswift.com/100/swiftui/4](https://www.hackingwithswift.com/100/swiftui/4)*

Type annotations let us explicitly tell Swift about what data types we want, and look like this:

```swift
let surname: String = "Doe"

var score: Int = 0

let pi: Double = 3.141

var isAuthenticated: Bool = true

var albums: [String] = ["Red", "Fearless"]

var user: [String: String] = ["id": "@john"]

var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])
```

If you need to use a constant but don't have initial value yet (e.g., value will be fetched from an API ), you can create a constant that doesn’t have a value just yet, later on provide that value.

```swift
let username: String

username = "@john"

print(username)
```

## Checkpoint 2

Create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

### Solution [here](Checkpoint2.playground/Contents.swift)