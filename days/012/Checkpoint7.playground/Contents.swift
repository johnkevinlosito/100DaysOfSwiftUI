import Cocoa

class Animal {
    let legs: Int
    
    init(legs: Int){
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Arf! Arf!")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("Meoww!")
    }
}

class Corgi: Dog {
    
    override func speak() {
        print("hmmfp!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("popopopo!")
    }
}

class Persian: Cat {
    override func speak() {
        print("hissss!")
    }
}

class Lion: Cat {
    override func speak() {
        print("Rawr!!")
    }
}

let corgi = Corgi(legs: 4)
corgi.speak()
let poodle = Poodle(legs: 4)
poodle.speak()
let persian = Persian(legs: 4, isTame: true)
persian.speak()
let lion = Lion(legs: 4, isTame: false)
lion.speak()
