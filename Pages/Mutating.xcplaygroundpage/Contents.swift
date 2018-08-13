func greet(name: String, withGreeting greeting: String) -> String {  // takes two arguments
    return "\(greeting) \(name)"
}

let personalGreeting = greet(name: "i2V", withGreeting: "What's up,")
print(personalGreeting)

/*
 ------------
 returning a func from the greeting
 -------------
 */
/*
func greeting(forName name: String) -> (String) -> String { // takes one argument the String and returns a function
    func greeting(_ greeting: String) -> String {
        return "\(greeting) \(name)"
    }
    return greeting
}

let greetMattWith = greeting(forName: "Matt")
let mattGreeting = greetMattWith("Hello,")
print(mattGreeting)
*/

func greeting(_ greeting: String) -> (String) -> String {
    return { (name: String) -> String in
        return "\(greeting) \(name)"
    }
}

let unfriendlyGreetingFor = greeting("Hello,")
let mattGreeting = unfriendlyGreetingFor("Matt")
print(mattGreeting)
/*
 ------------
Person
 -------------
 */
struct Person {
    var firstName = "Matt"
    var lastName = "Mathias"
    
    mutating func changeTo(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

// instance

var p = Person()
/*let changeName = Person.changeTo

let changeNameFromMattTo = changeName(&p)
changeNameFromMattTo("John", "Gallagher")
 */
p.changeTo(firstName: "John", lastName: "Gallagher") // thise code does the same thing that long code did, thats right above.

p.firstName // "John"



















