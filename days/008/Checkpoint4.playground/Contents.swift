import Cocoa

enum SqrtErrors: Error {
    case outOfBounds, noRoot
}

func integerSqrt(_ number: Int) throws -> Int {
     
    if number < 1 || number > 10_000 {
        throw SqrtErrors.outOfBounds
    }
    
    for i in 1...number {
        if i*i == number {
            return i
        }
    }
    throw SqrtErrors.noRoot
}

do {
    print(try integerSqrt(25))
}catch SqrtErrors.outOfBounds {
    print("Number out of bounds")
}catch SqrtErrors.noRoot {
    print("No integer root found")
}catch {
    print("Error: \(error.localizedDescription)")
}
