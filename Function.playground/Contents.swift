/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/06/2016
updated: 08/23/2016
...
Playground code snippets to learn about functions in Swift 3
*/

func doesNothingReturnNothing(){
    
}

//the function bellow exactly same as above !
func doesNothingReturnVoid() -> Void {
    
}

//the function bellow is also exactly as the first one and second one !
func doesNothingAndRetunsNon() -> () {
    
}

//fucntion with parameters
func adder(_ firstInt:Int , secondInt:Int) -> Int {
    return firstInt + secondInt;
}

let result = adder(3,secondInt:5) //by defualt this is how the call should be first argument requires no label, but second requires it!

//function that will return optional
func addUpTo10(_ firstInt:Int , secondInt:Int) -> Int? {
    let result = firstInt + secondInt
    if result <= 10 {
        return result
    }
    return nil
}

if let result = addUpTo10(1, secondInt: 2) {
    print("Result is: \(result)")
}

//returning Tuples
func getTime() -> (hours:Int , minutes:Int) {
    return (24 , 10)
}

let time = getTime();
time.hours
time.minutes
time.0
time.1
let (_,minutesOnly) = getTime() // this allows performance gain as no local copy of hours will not be created
print("minutes only captured via tuples: \(minutesOnly)")

//using default parameters
func sayHello(_ to:String = "World") {
    if to == "World" {
        print("no parameter passed in --> Hello World!")
    }else{
        print("parameter was pass in --> Hello \(to)!")
    }
}

sayHello()
sayHello("Bilal")

//passing Optional parameter
func sayHello(_ to:String?) {
    if let result = to {
        print("Hello \(result)!")
        
    }else{
        print("Hello World!")
    }
}

sayHello(nil)

//Variadic function: functions with unknown number of arguments of same type
func add(_ intsToAdd:Int...) ->Int {
    var addResult:Int = 0
    
    if intsToAdd.isEmpty {
        addResult = 0
    }
    
    for number in intsToAdd {
        addResult = addResult + number
    }
    
    return addResult
}

add()
add(1,2)
add(1,2,3,4)

//removing the requirment of named parameter after first parameter
func add(firstNmumber:Int , _ secondNumber:Int) -> Int {
    return firstNmumber + secondNumber
}

add(1,2)

//Most types in Swift are Structs and thus passed by value, bellow is how to pass by Refrence.. reminds me of C++!
// I believe Classes are passed by Refrence in Swift by default
var array:[Int] = [1,2,3]

func addToArray(_ array:inout [Int], newElement:Int){
    array.append(newElement)
}

addToArray(&array, newElement: 4)
array.count

//functions that take a function as parameter
func performOperation(_ firstNumber:Int , _ secondNumber:Int, operation:(Int,Int) ->Int) -> Int {
    return operation(firstNumber,secondNumber)
}

func addOperation(n1:Int,n2:Int) -> Int {
    return n1 + n2
}

var opResult:Int = performOperation(1, 2, operation: addOperation)

// assign function to var and use
var opToExecute:(Int,Int)->Int = addOperation //or could wrote it var opToExecute = addOperation , swift will infrence it
var opResult2 = performOperation(3, 4, operation: opToExecute)

