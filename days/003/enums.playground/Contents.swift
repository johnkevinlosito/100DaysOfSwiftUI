import Cocoa

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

enum Element {
    case fire, water, earth, wind
}
var day = Weekday.friday
print(day)

var element = Element.fire
print(element)
