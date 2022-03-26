# Day 9 – closures, passing functions into functions, and checkpoint 5

*[https://www.hackingwithswift.com/100/swiftui/9](https://www.hackingwithswift.com/100/swiftui/9)*

## Closures

You can copy functions in Swift, and they work the same as the original except they lose their external parameter names.

```swift
func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()
```

All functions have types. This includes the parameters they receive along with their return type, which might be `Void`.

```swift
func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)
```

You can create closures directly by assigning to a constant or variable. Closures that accept parameters or return a value must declare this inside their braces, followed by the keyword in.


```swift
let sayHelloName = { (name: String) -> String in
    "Hi \(name)!"
}
```

## Checkpoint 5

Put together `sorted()`, `filter()`, `map()`, in a chain – call one, then the other, then the other back to back without using temporary variables.

Your input is this:

```swift
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
```

Your job is to:

1. Filter out any numbers that are even
2. Sort the array in ascending order
3. Map them to strings in the format “7 is a lucky number”
4. Print the resulting array, one item per line

So, your output should be as follows:

```swift
7 is a lucky number
15 is a lucky number
21 is a lucky number
31 is a lucky number
33 is a lucky number
49 is a lucky number
```

### Solution [here](Checkpoint5.playground/Contents.swift)