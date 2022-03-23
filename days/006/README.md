# Day 6 – loops, summary, and checkpoint 3

*[https://www.hackingwithswift.com/100/swiftui/6](https://www.hackingwithswift.com/100/swiftui/6)*

Loops is when you need to perform repetitive actions/codes over a list or a range.

## For loops

Use for loops when you have a finite amount of data to go through.

```swift
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}
```

If you need to loop through a range of numbers

```swift
for i in 1...10 {
    print(i)
}
```

If you need to loop up to a number, meaning, excluding the last one

```swift
for i in 1..<10 {
    print(i)
}
```

You can also get the current index of a list in a loop

```swift
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
for (index, os) in platforms.enumerated() {
    print("\(index) - Swift works great on \(os).")
}
```

## While loops

You use while loops when you need a custom condition, or you don't know how many times to loop through.

```swift
var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}
```

## Continue

You use `continue` if you want to skip an item during the loop.

```swift
let filenames = ["me.jpg", "work.txt", "you.jpg", "logo.psd"]

for filename in filenames {
    if !filename.hasSuffix(".jpg") {
        continue
    }

    print("Found picture: \(filename)")
}
```

## Break

You use `break` if you want to end the loop when a condition is met.

```swift
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)
```


## Checkpoint 3 

### Fizz Buzz

The goal is to loop from 1 through 100, and for each number:

1. If it’s a multiple of 3, print “Fizz”
2. If it’s a multiple of 5, print “Buzz”
3. If it’s a multiple of 3 and 5, print “FizzBuzz”
4. Otherwise, just print the number.

### Solution [here](FizzBuzz.playground/Contents.swift)