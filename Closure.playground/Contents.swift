/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/07/2016
...
Playground code snippets to learn about closures in Swift
*/

//assign closure to a variable
var add = {
    (firstNum:Int, secondNum:Int) -> Int?
    in return firstNum + secondNum
}

//function that takes another function or closure
func performOperation(_ n1:Int, _ n2:Int, _ operation: (Int,Int) -> Int?) -> Int? {
    return operation(n1,n2)
}

var addOptResult: Int? = performOperation(1, 2,add)

//or I can just implement operation as closure instead of passing variable holding closure value
var subtractResult = performOperation(2, 1, {(n1:Int,n2:Int) -> Int? in return n1 - n2})

//or because the closure is last argument , we can use trailing closure syntax
var multiplyResult = performOperation(3, 5){
    (n1:Int,n2:Int) -> Int? in return n1 * n2
}


//using closures with Swift standard Libs
let nonSortedArray:[Int] = [5,7,0,9,3,2]

//bellow is one way to call sorted and pass function / closure
let sortedArrayDec:[Int] = nonSortedArray.sorted(by: {(n1:Int,n2:Int) -> Bool in return n2 < n1})

//another valid syntax using trailing closure.. i actually think the above is more readable
let sortedArrayUsingTrailingClosure = nonSortedArray.sorted(){ (n1:Int, n2:Int) -> Bool in return n2 < n1 }


//Swift can infer arguments in closure so you dont need to specify them
var sortedArrayAsc:[Int] = nonSortedArray.sorted(){ return $1 > $0 }
print(sortedArrayAsc)

//Swift can also infer the return statment when the closure or function passed is known to return
sortedArrayAsc = nonSortedArray.sorted(){$1 > $0}
print(sortedArrayAsc)

