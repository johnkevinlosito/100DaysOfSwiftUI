# Day 7 – functions, parameters, and return values

*[https://www.hackingwithswift.com/100/swiftui/7](https://www.hackingwithswift.com/100/swiftui/7)*

## Functions 

You can write reusable blocks of code using functions. With functions, you can add parameter values which will be used inside the function, and return values which will in turn send back to you once function has been executed.

Basic function looks like this:

```swift
func showIntroLyrics() {
    print("I wanna be the very best")
    print("Like no one ever was")
    print("To catch them is my real test")
    print("To train them is my cause")
}

// call the function
showIntroLyrics()
```

If you need to values to be passed on the function, add parameters inside parentheses `()` like so:

```swift
func multiplicationTable(number: Int) {
    for i in 1...10 {
        print("\(i) x \(number) is \(i * number)")
    }
}

multiplicationTable(number: 5)
```

On the example above, `number` is the parameter that only accepts `Int` as data type.

To make functions return a value, you add `-> DataType` right before `{}`:

```swift
func isEven(number: Int) -> Bool {
    if number.isMultiple(of: 2) {
        return true
        
    } else {
        return  false
    }
}

print(isEven(number: 10))
```

The `isEven` function above returns `Bool`.

To return multiple values, use `tuples`.

```swift
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Ash", lastName: "Ketchum")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")
```

Getting the returned value of the above `getUser` function can be simplified like this:

```swift
let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")
```

If you don't need the other value, you can use `_` instead:

```swift
let (firstName, _) = getUser()
print("Name: \(firstName)")
```

You can also customize the parameter label. For example, you have a function that accepts a parameter and it's pretty obvious what you want to pass, you can add `_` before the parameter name on the function definition.

```swift
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)
```

You can also customize it further by giving meaningful name for both the function parameter and function body:

```swift
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

```