/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/07/2016
...
Playground code snippets to learn about closures in Swift 2
*/

//assign closure to a variable
var add = {
    (firstNum:Int, secondNum:Int) -> Int?
    in return firstNum + secondNum
}

//function that takes another function or closure
func performOperation(n1:Int, _ n2:Int, _ operation: (Int,Int) -> Int?) -> Int? {
    return operation(n1,n2)
}

var addOptResult: Int? = performOperation(1, 2,add)

//or I can just implement operation as closure instead of passing variable holding closure value
var subtractResult = performOperation(2, 1, {(n1:Int,n2:Int) -> Int? in return n1 - n2})

//or because the closure is last argument , we can use trailing closure syntax
var multiplyResult = performOperation(3, 5){
    (n1:Int,n2:Int) -> Int? in return n1 * n2
}

