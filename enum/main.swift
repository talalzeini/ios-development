// Enum

enum Phone: String {
	case iPhone15 = "This will be my next phone."
	case iPhoneSE = "I dislike this phone size."
	case pixel = "Hardware is great."
	case nokia = "Unbreakable."
}

func printOpinion(on phone: Phone) {
    print(phone.rawValue)
}

printOpinion(on: .iPhone15) // prints "This will be my next phone."