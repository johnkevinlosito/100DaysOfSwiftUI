import Cocoa

struct Car {
    let model: String
    let seats: Int
    private(set) var gear: Int
    
    init(model: String, seats: Int){
        self.model = model
        self.seats = seats
        gear = 0
    }
    
    mutating func gearUp() {
        if gear < 6 {
            gear += 1
        }
        print("Current gear: \(gear)")
    }
    
    mutating func gearDown() {
        if gear > 0 {
            gear -= 1
        }
        if gear == 0 {
            print("Current gear: Neutral")
        }else{
            print("Current gear: \(gear)")
        }
        
    }
}

var civic = Car(model: "Civic RS Turbo", seats: 4)

print(civic.model)
print("\(civic.seats) seats")
print(civic.gear)
civic.gearUp()
civic.gearUp()
civic.gearUp()
civic.gearUp()
civic.gearUp()
civic.gearUp()
civic.gearDown()
civic.gearDown()
civic.gearDown()
civic.gearDown()
civic.gearDown()
civic.gearDown()
