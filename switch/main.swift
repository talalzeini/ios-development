// Switch 

enum Direction {
    case north, east, south, west

    // Method to provide a description of the direction
    func description() -> String {
        switch self {
            case .north:
                return "North: The direction of the North Star."
            case .east:
                return "East: The direction where the sun rises."
            case .south:
                return "South: The direction opposite to North."
            case .west:
                return "West: The direction where the sun sets."
        }
    }
}

// Example usage
let currentDirection = Direction.west
print("\(currentDirection.description())") // prints "West: The direction where the sun sets."