/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/04/2016
...
Playground code snipptets to learn about Collections in Swift 2
*/

//Begin Arrays
var intArrayA = [Int]() //initialize an empty array of Int
var intArrayB:[Int] //array of Int that is not initialized
let intArrayC = [1,2,3,4,5] //array of Ints initalized and uses type infrence and made to be immutable

intArrayB = [Int]()
intArrayB += [1] //adds 1 into the array
intArrayB.append(2) //another way to add to an array
intArrayB.count // return the size of the array
intArrayB.insert(intArrayC[2], atIndex: 2) //insert value from intArrayC at index 2 to intArrayB at index 2

intArrayB.removeAtIndex(0) //this is less safe and can cause out of bound errors if index is not valid
intArrayB.removeFirst()
intArrayB.removeLast()
intArrayB.removeAll()
intArrayB.count

let index = 5
if index < intArrayB.count {
    intArrayB.removeAtIndex(index)
}

if intArrayB.isEmpty {
    print("intArrayB is now Empty")
}

intArrayA = [1,2,3,4,5,6,7,8,9,10]
intArrayA.removeRange(0..<5)
print(intArrayA)

/*
    interesting! 

    * if i add space between < and intArray.count i get error 
      somthing to do with that expression been a closure!
    
    * insert() seems to do a push and not a replace!
*/
intArrayA.count
for i in 0..<intArrayA.count {
    intArrayA.insert(i, atIndex: i)
}
print(intArrayA)

//this seems the way to actually replace array content
for i in 0..<intArrayA.count {
    intArrayA[i] = i
}
print(intArrayA)

// dealing with Optional in Array
if let lastElement = intArrayA.last {
    print(lastElement)
}
//End Arrays



//Begin Dictionaries
//End Dictionaries

