import Cocoa

func randomIntegers(numbers: [Int]?) -> Int{ numbers?.randomElement() ?? Int.random(in: 1...100) }

let arrNumbers = [1,2,3,4,5]
print(randomIntegers(numbers: nil))
print(randomIntegers(numbers: arrNumbers))
