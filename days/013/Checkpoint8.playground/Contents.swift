import Cocoa

protocol Building {
    var rooms: Int {get set}
    var cost: Int {get set}
    var agent: String {get set}
    func salesSummary()
}

extension Building{
    func salesSummary() {
        print("Rooms: \(rooms)")
        print("Cost: \(cost)")
        print("Agent: \(agent)")
    }
}

struct House: Building{
    var rooms: Int
    var cost: Int
    var agent: String
    
}

struct Office: Building{
    var rooms: Int
    var cost: Int
    var agent: String
}

var house = House(rooms: 4, cost: 1_000_000, agent: "Brock")
house.salesSummary()
var office = Office(rooms: 24, cost: 10_000_000, agent: "Giovanni")
office.salesSummary()
