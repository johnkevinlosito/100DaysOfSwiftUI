import Cocoa

let pokemon = [
    "name": "Charizard",
    "type": "Fire",
    "ability": "blaze"
]

print("Name: \(pokemon["name", default: "Unknown"])")
print("Name: \(pokemon["type", default: "Unknown"])")
print("Name: \(pokemon["ability", default: "Unknown"])")

var regionGeneration = [String: Int]()
regionGeneration["Kanto"] = 1
regionGeneration["Johto"] = 2
regionGeneration["Hoenn"] = 3

print(regionGeneration)
