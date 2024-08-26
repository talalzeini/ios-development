// Array vs. Set

// Array
// Can have duplicates
// Ordered
// Time Complexity: O(n)
//
var array: [String] = ["Sean", "Maya", "Sean", "Olivia"]

// Set
// No duplicates
// Unordered
// Time Complexity: O(1)
//
var set: Set = ["Sean", "Maya", "Olivia"]

// Set Methods
var swiftUIDevs: Set = ["Sean", "James"]
var swiftDevs: Set = ["Sean", "James", "Olivia", "Maya", "Leo"]
var kotlinDevs: Set = ["Olivia", "Elijah", "Leo", "Maya", "Dan"]
var experiencedDevs: Set = ["Sean", "Ava", "Olivia", "Leo", "Maya"]

// Intersect - pull out overlap
let experiencedSwiftUIDevs = swiftUIDevs.intersection(experiencedDevs)
print(experiencedSwiftUIDevs) // prints ["Sean"]

// Subtract - pull out difference
let juniorSwiftUIDevs = swiftUIDevs.subtracting(experiencedDevs)
print(juniorSwiftUIDevs) // prints ["James"]

// Disjoint - check for overlap
print(swiftUIDevs.isDisjoint(with: kotlinDevs)) // prints true
print(swiftUIDevs.isDisjoint(with: swiftDevs)) // prints fals

// Union - combine
let kotlinAndSwiftDevs = kotlinDevs.union(experiencedDevs)
print(kotlinAndSwiftDevs)

// Exclusive - only in 1 set
let specialists = swiftDevs.symmetricDifference(kotlinDevs)
print(specialists) // prints ["Elijah", "James", "Sean", "Dan"]

// Subset
print(swiftUIDevs.isSubset(of: swiftDevs)) // prints true
print(swiftUIDevs.isSubset(of: kotlinDevs)) // prints false

// Superset
print(swiftDevs.isSuperset(of: swiftUIDevs)) // prints true
print(kotlinDevs.isSuperset(of: swiftUIDevs)) // prints false

// Insert, Delete, Find
swiftDevs.insert("Joe")
swiftDevs.remove("Sean")
swiftDevs.contains("Maya")
print(swiftDevs) // prints ["James", "Joe", "Maya", "Leo", "Olivia"]