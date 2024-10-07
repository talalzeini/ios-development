
import UIKit

// Sync vs. Async Example

// Create a concurrent dispatch queue
let concurrentQueue = DispatchQueue(label: "com.example.syncVsAsyncQueue", attributes: .concurrent)

// Add synchronous tasks to the concurrent queue
concurrentQueue.sync {
    print("Sync Task 1 started.")
    print("Sync Task 1 ended.")
}

concurrentQueue.sync {
    print("Sync Task 2 started.")
    print("Sync Task 2 ended.")
}

// Using sync blocks the current thread until the task finishes, preventing concurrent execution in both serial and concurrent queues.

// Expected Output:
// Sync Task 1 started.
// Sync Task 1 ended.
// Sync Task 2 started.
// Sync Task 2 ended.
