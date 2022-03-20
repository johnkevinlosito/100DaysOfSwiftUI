# Day 3 – Arrays, dictionaries, sets, and enums

*[https://www.hackingwithswift.com/100/swiftui/3](https://www.hackingwithswift.com/100/swiftui/3)*

## Array

Swift has a way of storing ordered lists of values of the same type, known as `Array`. There are three ways of declaring an array.

```swift
var trainers = ["Ash", "Brock", "Misty"]
var numbers = [1, 29, 45]
var grades = [95.2, 86.8, 90.1]
```

```swift
var pokemonRegions = [String]()
```

```swift
var pokemonSpecies = Array<String>()
```

You access data from an array using its index, which starts at 0.

```swift
print(trainers[0])
```

You can add items to an array using `append` method.

```swift
var pokemonTypes = Array<String>()
pokemonTypes.append("Fire")
pokemonTypes.append("Water")
pokemonTypes.append("Grass")
print(pokemonTypes)
```

Arrays also has other useful methods.

```swift
print(trainers.count)
trainers.remove(at: 2)
print(trainers.count)
print(trainers)

print(pokemonTypes.contains("Ice"))
print(pokemonTypes.sorted())
```

## Dictionaries

Dictionaries store items as key-value pair. The left part(before semicolor) is the `key` and the right part is the `value`.

```swift
let pokemon = [
    "name": "Charizard",
    "type": "Fire",
    "ability": "blaze"
]
```

You access the data using its key, not the index. When reading from a dictionary, you can provide a default value to use if the key doesn’t exist.

```swift
print("Name: \(pokemon["name", default: "Unknown"])")
print("Name: \(pokemon["type", default: "Unknown"])")
print("Name: \(pokemon["ability", default: "Unknown"])")
```

You can also create an empty dictionary and add items after.

```swift
var regionGeneration = [String: Int]()
regionGeneration["Kanto"] = 1
regionGeneration["Johto"] = 2
regionGeneration["Hoenn"] = 3
```

## Sets

Sets are like array but stores an unordered list of unique elements. Meaning, the orders are not guaranteed, and elements should not be duplicated. 

```swift
let emails = Set(["test@email.com", "juan@email.com", "sample@email.com",])
print(emails)
```

You add items to set using `insert` method.

```swift
var pokemons = Set<String>()
pokemons.insert("Pikachu")
pokemons.insert("Charmander")
pokemons.insert("Dragonite")
print(pokemons)
```

## Enum

An enumeration or enum defines a common type for a group of related values. You declare enum in two ways:

```swift
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
```

```swift
enum Element {
    case fire, water, earth, wind
}
```

You use enum this way:

```swift
var day = Weekday.friday
print(day)

var element = Element.fire
print(element)
```
