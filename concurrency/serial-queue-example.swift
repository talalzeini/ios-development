
import UIKit 

// Serial Queue Example

// Create a serial dispatch queue
let serialQueue = DispatchQueue(label: "com.example.serialQueue")

// Add asynchronous tasks to the serial queue
serialQueue.async {
    print("Task 1 started.")
    print("Task 1 ended.")
}

serialQueue.async {
    print("Task 2 started.")
    print("Task 2 ended.")
}

// Expected Output (order may vary):
// Task 1 started.
// Task 1 ended.
// Task 2 started.
// Task 2 ended.
