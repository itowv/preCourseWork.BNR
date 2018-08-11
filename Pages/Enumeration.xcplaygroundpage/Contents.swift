/*
 ---------------
 Enumeration ' enum keyward
 -------=------
 */
// enum types begining with Capital Letters, the case variables/func/enum CASES begin with lower case
// enum declare a new type you define

enum TextAlignment: Int { // needs at least once case statement, our example left,right,cent. declares possible values of enum
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}

var alignment = TextAlignment.justify

// var alignment: TextAlignment = TextAlignment.left // omit the type "var al.....: Text..."

// var alignment: TextAlignment = TextAlignment.left
// var alignment = TextAlignment.left
// assuming the type
//alignment = .right
// dont need to included "TextAlighnment.-----"
/*
if alignment == .right {
    print("We should right-align the text!")
}
*/

print("Left has raw value \(TextAlignment.left.rawValue)")
print("Right has raw value \(TextAlignment.right.rawValue)")
print("Center has raw value \(TextAlignment.center.rawValue)")
print("Justify has raw value \(TextAlignment.justify.rawValue)")
print("The alignment variable has raw value \(alignment.rawValue)")

let myRawValue = 40


if let myAlignment = TextAlignment(rawValue: myRawValue)  {
    print("successfully converted \(myRawValue) into a TextAlignment.")
} else {
    print("\(myRawValue) has no corresponding TextAlignment case")
}

switch alignment {
case .left:
    print("left aligned")
    
case .right:
    print("right aligned")
    
case .center:
print("center aligned")
    
case .justify:
    print("justified")
    
//default: -> not future proof. better to not use a Default
 ///   print("center aligned")
    
}


/*
 ---------------
 Creating an Enum with string
 -------=------
 */

enum ProgrammingLanguage: String {
    case swift
    case objectiveC = "obejective-c"
    case c
    case cpp = "c++"
    case java
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")


/*
 ---------------
Methods
 -------=------
 */

enum Lightbulb {
    case on
    case off
    
    func surfaceTemperture(forAmbientTemperature ambient: Double) -> Double { // func inside enum
        switch self {
        case .on:
            return ambient + 150.0
            
        case .off:
            return ambient
        }
    }
    mutating func toggle() { // need to add mutating
        switch self {
        case .on:
            self = .off
            
        case .off:
            self = .on
        }
    }
}

var bulb = Lightbulb.on
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperture(forAmbientTemperature:
ambientTemperature)  // instance.methodName(perameters)
print("the bulb's temperature is \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperture(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")


/*
 ---------------
 associated values- cases with ass. values
 -------=------
 */

/* enum ShapeDimensions { // enum type is ShapeDimension
    case point
    case area
    case square(side: Double) // named tupel
    
    case rectangle(width: Double, height: Double) // named tupel
}

var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)

var pointShape = ShapeDimensions.point

func area() -> Double {
    switch self {
    case .point:
        return 0
        
    case let .square(side: side):
        return side * side
        
    case let .rectangle(width: w, height: h):
        return w * h
        
        
    }
}
}
print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")

*/
// couldnt get the code to work above wasted time

enum FamilyTree {
    case noKnownParents
   indirect case oneKnownParent(name: String, ancestors: FamilyTree)
indirect case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree, motherName: String, motherAncestors: FamilyTree)
}

let fredAncesors = FamilyTree.twoKnownParents(fatherName: "Fred Sr", fatherAncestors: .oneKnownParent(name: "Beth", ancestors: .noKnownParents), motherName: "Marsha", motherAncestors: .noKnownParents)
//print(fredAncesors)

enum ShapeDimensions {
    // Point has no associated value - it is dimensionless
    case Point
    
    // Square's associated value is the length of one side
    case Square(Double)
    
    // Rectangle's associated value defines it's width and height
    case Rectangle(width: Double, height: Double)
    
    case RightTriangle(adjacent: Double, opposite: Double)
    
    case AreRect(width: Double, height: Double)
    
    func area() -> Double {
        switch self {
        case .Point:
            return 0
            
        case let .Square(side):
            return side * side
            
        case let .Rectangle(width: w, height: h):
            return w * h
            
        case let .RightTriangle(adjacent: a, opposite: o):
            return a * o / 2
            
        case let .AreRect(width: w, height: h):
            return (w * 2) + (h * 2)
        }
    }
    
}

var squareShape = ShapeDimensions.Square(10.0)
var rectShape = ShapeDimensions.Rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.Point
var rightTriangleShape = ShapeDimensions.RightTriangle(adjacent: 3.0, opposite: 4.0)
var AreRectShape = ShapeDimensions.AreRect(width: 4, height: 4)
print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("right triangle's area = \(rightTriangleShape.area())")

print(AreRectShape.area())

