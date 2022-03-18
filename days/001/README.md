
# Day 1 - variables, constants, strings, and numbers

*[https://www.hackingwithswift.com/100/swiftui/1](https://www.hackingwithswift.com/100/swiftui/1)*

## Variables

You declare variable with the `var` keyword followed by the name.

```swift
var greeting = "Welcome to Swift!"
```

The same code above created a variable named `greeting` with the value of "`Welcome to Swift!`".

Variables can have their values reassigned.

```swift
var name = "John"
name = "Kevin"
```

## Constants

Constants on the other hand cannot change their values, and uses `let` keyword instead of `var`.

```swift
let character = "Pikachu"
```

## Strings

When you assign text to a constant or variable, we call that a string. The examples above are all strings, denoted by the double quotes at the start and end.

To use double quotes inside a string, you can escape it with a backslash like this:

```swift
let quote = "Then he tapped a sign saying \"Believe\" and walked away."
```

To create multiline strings, add triple quotes at the start and end are on their own line, with your string in between.

```swift
let multiLineString = """
A day in
the life of an
Apple engineer
"""
```

You can get the length of a string by writing `.count` after the name of the variable or constant:

```swift
print(character.count)
```

## Numbers

When working with whole numbers like 5, 10, 15, Swift calls this *integers* or `Int`. If working with decimals like 3.14, it is called `Double`.

```swift
let wholeNumber = 10
let decimalNumber = 3.14
```

You can use arithmetic operations as well such as addition (`+`), subtraction (`-`), multiplication (`*`), and division (`/`).

```swift
let score = 10

let lowerScore = score - 2
let higherScore = score + 2
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
```

Keep in mind that you can't mix up integers and decimals.

```swift
let a = 1
let b = 2.0
```
To do so, either tell Swift to threat the `Double` as an `Int`:

```swift
let c = a + Int(b)
```

Or treat the `Int` as a `Double`:

```swift
let c = Double(a) + b
```