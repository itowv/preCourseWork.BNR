//: A UIKit based Playground for presenting user interface
  
import UIKit
let playground = "Hello, playground"
var mutalbePlayground = "Hello, mutable playground"
// you can add to this string its, mutable
mutalbePlayground += "!"
print(mutalbePlayground)
// the x in the code below can by any letter, however not a number.
//the code below prints all the characters in a single row. access the property of the string
// accessed by the dot "  . " syntax
for c: Character in mutalbePlayground.characters {
//    the quotation marks are single than double in the print code.
    print("'\(c)'")
}
//that code needs that \ in order for it to print out the emojiand not just text
let oneCoolDude = "\u{1F60E}"
mutalbePlayground += "   \(oneCoolDude)"
// acute a -> decomposed into its two parts written out to combine acute an a
let aAcute = "\u{0061}\u{0301}"
print(aAcute)
for scalar in mutalbePlayground.unicodeScalars {
    print("\(scalar.value)")
}
//the 72 represents "H"
let aAcutePrecomposed = "\u{00E1}"

let b = (aAcute == aAcutePrecomposed) // true. they do equal each other
//code below wouldnt print. said theres an error
//print("aAcute: \(aAcute.characters.count);
  //  aAcutePrecomposed: \(aAcutePrecomposed.characters.count)")



let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCaracter = playground[end] // 0, keep in mind it starts with 0, 1, 2, 3...
// if you want some more letters fro Hello World
let range = start...end
let firstFive = playground[range] // 'Hello'
print(firstFive)

//Bronze challenge

let empty = ""
print("empty: \(empty.characters.count)")

//let started = empty.startIndex
//let ended = empty.index(start, offsetBy: 0)
//let AnyCharacter = empty[range] // ?
print(empty.count)

let uniHello = "\u{0048}\u{0065}\u{006c}\u{006c}\u{006f}" //"hello"


