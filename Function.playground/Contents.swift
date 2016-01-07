/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/06/2016
...
Playground code snippets to learn about functions in Swift 2
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
func adder(firstInt:Int , secondInt:Int) -> Int {
    return firstInt + secondInt;
}

let result = adder(3,secondInt:5) //by defualt this is how the call should be first argument requires no label, but second requires it!

//function that will return optional
func addUpTo10(firstInt:Int , secondInt:Int) -> Int? {
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

//using default parameters
func sayHello(to:String = "World") {
    if to == "World" {
        print("no parameter passed in --> Hello World!")
    }else{
        print("parameter was pass in --> Hello \(to)!")
    }
}

sayHello()
sayHello("Bilal")

//passing Optional parameter
func sayHello(to:String?) {
    if let result = to {
        print("Hello \(result)!")
        
    }else{
        print("Hello World!")
    }
}

sayHello(nil)

//Variadic function: functions with unknown number of arguments of same type
func add(intsToAdd:Int...) ->Int {
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

