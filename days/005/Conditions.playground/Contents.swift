import Cocoa

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

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)
