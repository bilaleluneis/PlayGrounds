/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/03/2016
...
Playground code snippets to learn about Optionals and how to unwrap them in swift 2
updated 08/23/2016 to comply with swift 3 changes
updated 10/04/2017 remove warnings and add test some more features of Optionals with Swift 4
*/


var intA:Int? = 1
var intB:Int? = 2
var intC:Int?
var forcedUnwrappedOptional: Int! = 5 //this optional that was force unwrapped, this must have a value or crash



//using if to check if optional is nil or not
if intA != nil {
    print("value of intA is : \(intA!)") //intA! to unwrap and pull Int value of the optional var (force unwrap)
}


//using if let which will uwrap the optional into constant without need for using ! to force unwrap
if let constOfA = intA {
    print("value of intA unwrapped into constA is : \(constOfA)")
}

//using same above technique to unwrap multiple optionals and skip if any of them fail
if let _intA = intA, let _intB = intB, let _intC = intC {
    print("all optionals contained value\(_intA) \(_intB) \(_intC)")
}else{
    print("an optional was nill in the above check !")
}

//using same above technique but also adding a condition on value
intC = 30
if let _intA = intA, let _intB = intB, let _intC = intC , _intC == 30 {
    print("all optionals contained value and intC value is \(_intC) Others are \(_intA) and \(_intB)")
}else{
    print("an optional was nill in the above check !")
}

//trying optionals chaining

class person{
    
    var info : IdentifyingInfo?
    
}

class IdentifyingInfo {
    
    var age : Int
    var dateOfBirth: String
    
    init(_age: Int, _dateOfBirth: String){
        age = _age
        dateOfBirth = _dateOfBirth;
    }
    
}

//let me = person() //uncomment and comment bellow 3 lines to test case with IdentifyingInfo Object is nil
var me = person()
var info = IdentifyingInfo(_age: 30, _dateOfBirth: "01/11/2000")
me.info = info

if let myage = me.info?.age {
    print ("my age is \(myage)")
}else{
    print("IdentifyingInfo Object in Person is nil !")
}

/*
 the ! and ? are really sugar to hide the verbose nature of Optionals.
 Optional in fact is an enum with associated values
 enum Optional<T> {
    case non
    case some(T)
 }
 bellow is example of exposing what Optinal type is
 */

let firstExample = Optional<String>.none
let secondExample = Optional<String>.some("a String Value")

switch secondExample {
case .none:
    print("Optional String is nil")
case .some(let value):
    print("Optional String has value of \(value)")
}

//Optional default return if nil
let optionalDefault : String? = "Value"
let resultOfOptionalDefault = optionalDefault ?? "Empty" //notice the use of ?? operator

