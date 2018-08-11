
func divisionDescritionFor(numerator: Double, denominator: Double, withPunctuation puncutation: String = ".") -> String {
    return "\(numerator) divided by \(denominator) equals \(numerator / denominator)\(puncutation)"
}
print(divisionDescritionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!"))

// --- Void ---

func printGreeting() -> Void {
    print("Hello, playboi.")
}
printGreeting()
