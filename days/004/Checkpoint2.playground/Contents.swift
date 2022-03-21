import Cocoa

let pokemonTeam = ["Charizard", "Snorlax", "Venausaur", "Blastoise", "Charizard", "Pikachu"]

print(pokemonTeam.count)

let uniquePokemon = Set(pokemonTeam)

print(uniquePokemon.count)
