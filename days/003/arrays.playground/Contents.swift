import Cocoa

var trainers = ["Ash", "Brock", "Misty"]
var numbers = [1, 29, 45]
var grades = [95.2, 86.8, 90.1]

print(trainers[0])
print(numbers[1])
print(grades[2])

trainers.append("Lance")
print(trainers)

var pokemonTypes = Array<String>()
pokemonTypes.append("Fire")
pokemonTypes.append("Water")
pokemonTypes.append("Grass")
print(pokemonTypes)

var pokemonRegions = [String]()
pokemonRegions.append("Kanto")
pokemonRegions.append("Johto")
pokemonRegions.append("Hoenn")
print(pokemonRegions)

print(trainers.count)
trainers.remove(at: 2)
print(trainers.count)
print(trainers)

print(pokemonTypes.contains("Ice"))
print(pokemonRegions.sorted())
