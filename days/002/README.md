# Day 2 - booleans, string interpolation, and checkpoint 1

*[https://www.hackingwithswift.com/100/swiftui/2](https://www.hackingwithswift.com/100/swiftui/2)*

## Boolean

Another datatype is called `Boolean` which only stores `true` or `false`. Declaring Boolean is the same as with the other types

```swift
let goodCats = true
let gameOver = false
```

You can also assign a Boolean's value based on the other expressions/code:

```swift
let isMultiple = 120.isMultiple(of: 3)
```

The above code stores the value `true` to the constant `isMultiple` since the expression `120.isMultiple(of: 3)` yields to `true`.

There are two ways to negate/flip a Boolean value, first is using `!` which means `not`, and the second is using the method `toggle()`:

```swift
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)

var gameOver = false
gameOver.toggle()
print(gameOver)
```

## String Interpolation

There are two ways to combine strings, using `+` and the other is called string interpolation.

```swift
let firstWord = "Welcome "
let secondWord = "to Swift!"
let greeting = firstWord + secondWord
```

The above code works and is okay for combining 2 strings. But for more complex combinations, or if you want to insert an integer into the string, you should use string interpolation, which can be done by adding a backslash in your string followed by variable/constant inside a parenthesis.

```swift
let name = "Chuck"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)
```

## Checkpoint 1

### Convert temperatures from Celsius to Fahrenheit.

Your goal is to write a Swift playground that:

```
1. Creates a constant holding any temperature in Celsius.
2. Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
3. Prints the result for the user, showing both the Celsius and Fahrenheit values.
```


Solution [here](CelsiusToFahrenheit.playground/Contents.swift)