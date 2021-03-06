# Day 5 – if, switch, and the ternary operator

*[https://www.hackingwithswift.com/100/swiftui/5](https://www.hackingwithswift.com/100/swiftui/5)*

You can check if a certain condition is true before executing some blocks of code.

Swift supports the following comparison operators:

 - Equal to (a == b)
 - Not equal to (a != b)
 - Greater than (a > b)
 - Less than (a < b)
 - Greater than or equal to (a >= b)
 - Less than or equal to (a <= b)

Logical operators modify or combine the Boolean logic values true and false. Swift supports the three standard logical operators found in C-based languages:

 - Logical NOT (!a)
 - Logical AND (a && b)
 - Logical OR (a || b)

You would any or combinations of the above comparison operators  and logical operators when working with conditionals.

## If, if ... else, if ... else if ... else

```swift
let pokemonType = "fire"

if pokemonType == "fire" {
    print("It is weak against water.")
}

let username = "johnwick123"
let password = "boogeyman"

if username.isEmpty || password.isEmpty {
    print("Username/password can't be empty.")
} else if username == "johnwick123" && password == "boogeyman" {
    print("Access granted!")
} else {
    print("Incorrect credentials.")
}
```

## Switch

```swift
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}


let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}
```

### Ternary

```swift
enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)
```