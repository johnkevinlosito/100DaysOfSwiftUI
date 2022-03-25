# Day 8 – default values, throwing functions, and checkpoint 4

*[https://www.hackingwithswift.com/100/swiftui/8](https://www.hackingwithswift.com/100/swiftui/8)*

## Function default values

There may be instances where the function parameter can be optional, meaning it has `default` parameter value, making it less code to write. 

```swift
func multiplicationTable(for number: Int, end: Int = 10) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

multiplicationTable(for: 5, end: 20)
multiplicationTable(for: 8)
```

In the code above, the parameter `end` has a default value of `10`. So if you only want to call the function with 10 as the end value, you can ommit the `end`.


## Handling error

Functions can throw errors, and Swift lets us handle these errors so that our code won't crash. Error handling takes 3 steps:

1. Create an enum defining the errors that can happen.
2. Throw those errors inside the function as needed. 
3. Use `do`, `try`, and `catch` to handle them at the call site.

```swift
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}


let password = "12345"

do {
    let result = try checkPassword(password)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error: \(error.localizedDescription)")
}

```

## Checkpoint 4 

### Integer Square Root

The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:

1. You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
2. If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
3. You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
4. If you can’t find the square root, throw a “no root” error.

### Solution [here](Checkpoint4.playground/Contents.swift)