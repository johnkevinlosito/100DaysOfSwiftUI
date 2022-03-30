# Day 12 – classes, inheritance, and checkpoint 7

_[https://www.hackingwithswift.com/100/swiftui/12](https://www.hackingwithswift.com/100/swiftui/12)_

## Classes

`Classes` are like `structs` but they behave differently. Classes don't have default memberwise initializers, we must implement `init` on our own, or assign default values to all properties.

```swift
class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }

    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}
```

## Inheritance

Creating classes based on an existing class, it inherits all properties and methods of it. You could as well `override` the parent's method/function.

```swift
class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }

    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }

    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

let john = Developer(hours: 8)
john.work()
john.printSummary()
```

You can mark a class as `final`, meaning it wont support inheritance.

## Add initializer on subclass

```swift
class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)
```

## Deinitializer

Deinitializer is an function called when the last copy of the class is destroyed.

```swift
class UserID {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}
var users = [UserID]()

for i in 1...3 {
    let user = UserID(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")
```

## Checkpoint 7

Make a class hierarchy for animals, starting with `Animal` at the top, then `Dog` and `Cat` as subclasses, then `Corgi` and `Poodle` as subclasses of `Dog`, and `Persian` and `Lion` as subclasses of `Cat`.

1. The `Animal` class should have a `legs` integer property that tracks how many legs the animal has.
2. The `Dog` class should have a `speak()` method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
3. The `Cat` class should have a matching `speak()` method, again with each subclass printing something different.
4. The `Cat` class should have an `isTame` Boolean property, provided using an initializer.

## Solution [here](Checkpoint7.playground/Contents.swift)
