/*
 ------------------------------------------------------------------------------------------
 Optionals
 .........
 It either has a value and it is ready for use, or it has no value. If an instance has no value associated with it, we say that it is nil.
 ------------------------------------------------------------------------------------------
 */


 
/*
 ------------------------------------------------------
Declaing an optional
 ------------------------------------------------------
 */

var errorCodingString: String? // the ? makes it an optional
errorCodingString = "404"
print(errorCodingString)

if errorCodingString != nil {
    let theError = errorCodingString! //<- force unwrapping
    
    /* Forced unwrapping accesses the underlying value of the optional, which allows you to grab "404" and assign it to the constant theError. It is called “forced” unwrapping because it tries to access the underlying value whether or not there is actually a value there at all. That is, the ! assumes there is a value; if there is no value, unwrapping the value in this way would lead to a runtime error.
     */
    print(theError)
    
    var firstPlace: String?
    //firstPlace = "javier"
    print(firstPlace)
    
    if firstPlace != nil {
        let noFristPlaceError = firstPlace!
    }
}


/*
 ------------------------------------------------------
 Optional Binding
 ------------------------------------------------------
 */

var errorCodingString2: String?
errorCodingString2 = "9005"
if let theError2 = errorCodingString2 {
    print(theError2)
    
}

/*
 ------------------------------------------------------
 Nesting Optional Binding
 ------------------------------------------------------
 */

var errorCodingString3: String?
errorCodingString3 = "38709"
if let theError3 = errorCodingString3 {
    if let errorCodeInteger = Int(theError3) {
        print("\(theError3): \(errorCodeInteger)")
    }
    
    
}
/*
 ------------------------------------------------------
 Unwraping various Optionals
 ------------------------------------------------------
 */

var errorCodingString4: String?
errorCodingString4 = "714"
if let theError4 = errorCodingString4, let errorCodeInteger2 = Int(theError4)  {
    print(theError4)
    
}

/*
 ------------------------------------------------------
 Optional binding and additional checks
 ------------------------------------------------------
 */


var errorCodingString5: String?
errorCodingString5 = "801"
if let theError5 = errorCodingString5, let errorCodeInteger3 = Int(theError5),
errorCodeInteger3 == 801 {
    print("The Error Code is \(theError5): The Error Code Integer \(errorCodeInteger3) matches the string")
}

/*
 ------------------------------------------------------
implicity unwrapped optionals
 ------------------------------------------------------
 */

var errorCodingString6: String! = nil
let anotherErrorCodeString: String! = errorCodingString6 // will this work
let yetAnotherErrorCodeString = errorCodingString6 // optional or implicity unwrapped


/*
 ------------------------------------------------------
Optional Chaining
 ------------------------------------------------------
 */
var errorCodeString7: String?
errorCodeString7 = "777"
var errorDescription7: String?
if let theError7 = errorCodeString7, let errorCodeInteger7 = Int(theError7),
    errorCodeInteger7 == 777 {
    print("\(theError7): \(errorCodeInteger7)")
    errorDescription7 = "\(errorCodeInteger7 + 200): resource was not found."
}

var upCaseErrorDescription = errorDescription7?.uppercased()
errorDescription7
print(upCaseErrorDescription)

/*
 ------------------------------------------------------
 Modifying an Optional in place
 ------------------------------------------------------
 */

var errorCodeString8: String?
errorCodeString8 = "888"
var errorDescription8: String?
if let theError8 = errorCodeString8, let errorCodeInteger8 = Int(theError8),
    errorCodeInteger8 == 888 {
    print("\(theError8): \(errorCodeInteger8)")
    errorDescription8 = "\(errorCodeInteger8 + 200): resource was not found."
}

var upCaseErrorDescription8 = errorDescription8?.uppercased()
errorDescription8

upCaseErrorDescription8?.append("PLEAE TRY AGAIAN.")
upCaseErrorDescription8


/*
 ------------------------------------------------------
The Nil Coalescing Operator
 ------------------------------------------------------
 */

var errorCodeString9: String?
errorCodeString9 = "9"
var errorDescription9: String?
if let theError9 = errorCodeString9, let errorCodeInteger9 = Int(theError9),
    errorCodeInteger9 == 999 {
    print("\(theError9): \(errorCodeInteger9)")
    errorDescription9 = "\(errorCodeInteger9 + 200): resource was not found."
}

var upCaseErrorDescription9 = errorDescription9?.uppercased()
errorDescription9

upCaseErrorDescription9?.append("PLEAE TRY AGAIAN.")
upCaseErrorDescription9

let description9: String
if let errorDescription9 = errorDescription9 {
    description9 = errorDescription9
} else {
    description9 = "No error"
}

/*
 ------------------------------------------------------------------------
 Easier way The Nil Coalescing Operator
 ------------------------------------------------------------------------
 */

var errorCodeString0: String?
errorCodeString0 = "33"
var errorDescription0: String?
if let theError0 = errorCodeString0, let errorCodeInteger0 = Int(theError0),
    errorCodeInteger0 == 33 {
    print("\(theError0): \(errorCodeInteger0)")
    errorDescription0 = "\(errorCodeInteger0 + 200): resource was not found."
}

var upCaseErrorDescription0 = errorDescription0?.uppercased()
errorDescription0

upCaseErrorDescription0?.append("PLEAE TRY AGAIAN.")
upCaseErrorDescription0
errorDescription0 = nil
let description0 = errorDescription0 ?? "No Error"

   /*
------------------------------------------------------------------------

------------------------------------------------------------------------
*/



