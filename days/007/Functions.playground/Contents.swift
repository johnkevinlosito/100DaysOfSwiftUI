import Cocoa

func showIntroLyrics() {
    print("I wanna be the very best")
    print("Like no one ever was")
    print("To catch them is my real test")
    print("To train them is my cause")
}

showIntroLyrics()

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

func isEven(number: Int) -> Bool {
    if number.isMultiple(of: 2) {
        return true
        
    } else {
        return  false
    }
}

print(isEven(number: 10))

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Ash", lastName: "Ketchum")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

// or

let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")

//let (firstName, _) = getUser()
//print("Name: \(firstName)")

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)

func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

func multiplicationTable(for number: Int, end: Int = 10) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

multiplicationTable(for: 5, end: 20)
multiplicationTable(for: 8)

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
