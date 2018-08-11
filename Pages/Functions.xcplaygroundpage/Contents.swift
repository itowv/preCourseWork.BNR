func printGreeting() {
    print("Hello, playground.")
 
}
printGreeting()
print("-------BReak--------------")

//More personal

func printPersonalGreetings(to names: String...) {
    for name in names {
        print("Hello \(name),welcome to the playground.")
    }
}
printPersonalGreetings(to: "I2V", "Mystical", "Chooks", "lol")

print("-------BReak---------------")

func divisionDescritpionFor(numerator: Double, denominator: Double,
                            whithPunctuation punctuation: String = ".") {
    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)")
}
divisionDescritpionFor(numerator: 9.0, denominator: 3.0)
divisionDescritpionFor(numerator: 89.0, denominator: 3.0, whithPunctuation: "{")
divisionDescritpionFor(numerator: 9.0, denominator: 3.0, whithPunctuation: "!")
print("-------BReak--------------")

//

var error = "The request failed:"
func appendErrorCode(_ code: Int, toErrorString errorString: inout String) {
    if code == 400 {
        error += " bad request."
    }
}
appendErrorCode(400, toErrorString: &error)
error
print(error)

print("--------_Brea------")

/*
 ------
 Nested Functions
---------------
 */

func areaOfTrainingWith(base: Double, height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}
areaOfTrainingWith(base: 3.0, height: 5.0)


/*
 ---
 
Sorting Evensand Ods Tuple
----
 */

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
}
return (evens, odds)
}

let aBunchofNumbers = [10, 1, 4, 3, 57, 43, 84, 27, 156, 111]
print(aBunchofNumbers)
//
print(" -- Break ---")
let theSortedNumbers = sortedEvenOddNumbers(aBunchofNumbers)
print(theSortedNumbers)
//
print("----Break----")
print("The even numbes are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds)")

/*
 ---
 
 Func with optional. Example, list of peoples full name, and pulling the middle name. not every one will havea middle name
 ----
 */
print("-------Break------")

func grabMiddleName(fromFullName name: (String, String?, String)) -> String? {
    return name.1 // its a 1 because the tuple index starts at zero. so 1 will give you the place where a middle name is found.
}

let middleName = grabMiddleName(fromFullName: ("i2v","Slim","Mathias")) // because the midle name is " niL " , meaning theres no last name, nil is printed.
if let theName = middleName {
    print(theName)
}
/*
 ---
 
 Guard statement
 ----
 */
print("-------Break-----------")

func greetByMiddleName(fromFullName name: (frst: String,
    middle: String?, last: String)) {
    guard let middleName = name.middle,
        (name.middle?.characters.count)! < 4 else {
        print("Hey there!")
        return
    }
    print("Hey \(middleName)")
}
greetByMiddleName(fromFullName: ("Francisco","Sue","Ramirez")) // change nil to "ivan" and you get a different return in the consolech

//let evanOddFunction: ([Int]) -> ([Int]), [Int]) = sortedEvenOddNumers


// Code Challenge
let results = siftBeans(fromGroceryList: ["green beans",
                                         "milk",
                                         "black beans",
                                         "pinto beans",
                                         "apples"])

results.beans == ["green beans", "black beans", "pinto beans"] // true
results.otherGroceries == ["milk", "apples"] // true


func siftBeans(fromGroceryList groceries: [String]) -> (beans: [String], otherGroceries: [String]){
    var beans = [String]()
    var otherGroceries = [String]()
    for item in groceries {
        if item.hasSuffix("beans") {
            beans.append(item)
        } else {
            otherGroceries.append(item)
        }
    }
    return(beans, otherGroceries)
}

let result = siftBeans(fromGroceryList: ["green beans", "milk", "black beans", "pinto beans", "apples"])
print(result)
