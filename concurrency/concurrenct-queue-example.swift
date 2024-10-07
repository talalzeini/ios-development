
import UIKit 

// Concurrent Queue Example

// Create a concurrent dispatch queue
let concurrentQueue = DispatchQueue(label: "com.example.concurrentQueue", attributes: .concurrent)

// Add asynchronous tasks to the concurrent queue
concurrentQueue.async {
    print("Task 1 started.")
    print("Task 1 ended.")
}

concurrentQueue.async {
    print("Task 2 started.")
    print("Task 2 ended.")
}

// Expected Output (order may vary):
// Task 1 started.
// Task 1 ended.
// Task 2 started.
// Task 2 ended.
