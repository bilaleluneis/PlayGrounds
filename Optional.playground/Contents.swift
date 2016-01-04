/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/03/2016
...
Playground code snipptets to learn about Optionals and how to unwrap them in swift 2
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
if let _intA = intA, _intB = intB, _intC = intC {
    print("all optionals contained value")
}else{
    print("an optional was nill in the above check !")
}

//using same above technique but also adding a condition on value
intC = 30
if let _intA = intA, _intB = intB, _intC = intC where _intC == 30 {
    print("all optionals contained value and intC value is \(_intC)")
}else{
    print("an optional was nill in the above check !")
}
