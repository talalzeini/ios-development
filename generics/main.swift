// Generics

// Generics eliminate code duplication by creating a general solution
// that can handle various types

protocol Motor {
    var name: String { get }
}

protocol Drivable {
    var motor: Motor { get }
    var wheels: Int { get }
}

func driveHome<T: Drivable>(vehicle: T){
    // Code to drive the vehicle home
}

func determineHigherValue<T: Comparable>(valueOne: T, valueTwo: T) {
    let higherValue = valueOne > valueTwo ? valueOne : valueTwo
    print("\(higherValue) is the higher value")
}

determineHigherValue(valueOne: 3, valueTwo: 8) // prints "8 is the higher value"
determineHigherValue(valueOne: "Sean", valueTwo: "Swift") // prints "Swift is the higher value"
// determineHigherValue(valueOne: 3, valueTwo: "Swift") // Will not work