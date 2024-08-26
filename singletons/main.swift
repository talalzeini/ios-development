// Singletons

// An instance of a class that can only be created once 
// and is globally accessible throughout your codebase

final class MySingleton {
    static let shared = MySingleton()

    private init() { }

    func doSomething() { }

}

// MySingleton.shared.doSomething()

// UserDefaults.standard.set(false, forKey: "isFirstUse")
// FileManager.default
// URLSession.shared