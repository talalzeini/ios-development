// Classes vs. Structs

// class = Reference Type
// Google Sheets
// Supports Inheritance
//
class Car {
    var year: Int
    var make: String
    var color: String
    
    init(year: Int, make: String, color: String) {
        self.year = year
        self.make = make
        self.color = color
    }
}

// Inheritance example
class RaceCar: Car {
    var number: Int
    var team: String
}

var myCar = Car(year: 2022, make: "Porsche", color: "Grey")
var stolenCar = myCar
stolenCar.color = "Yellow"
print(myCar.color) // prints Yellow

// struct = Value Type
// Excel
// Doesn't support Inheritance
// Lightweight & Performant
//
struct Motorcycle {
    var year: Int
    var color: String
}

var myMotorcycle = Motorcycle(year: 2022, color: "Grey")
var stolenMotorcycle = myMotorcycle
stolenMotorcycle.color = "Yellow"
print(myMotorcycle.color) // prints Grey