/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/04/2016
...
Playground code snippets to learn about Collections in Swift 2
*/

//Begin Arrays
print("-------Begin Arrays------------------")

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

//looping through an Array
for i in intArrayA {
    print(i, terminator: "")
}

// dealing with Optional in Array
if let lastElement = intArrayA.last {
    print("\n\(lastElement)")
}

print("-------End Arrays--------------------\n")
//End Arrays



//Begin Dictionaries
print("-------Begin Dictionaries------------")

var dictionaryA:[String:Int] //uninitalized dictionary key is String and Value is Int
var dictionaryB:[String:Int] = [String:Int]() //initalized dictionary that is empty
var dictionaryC = [String:Int]() //initialized using type infrence
var dictionaryD:[String:Int] = ["one":1] // mutable dictionary initalized
let dictionaryE:[String:Int] = ["one":1, "two":2, "three":3] //constant (immutable) dictionary initalized with values

dictionaryA = [String:Int]()
dictionaryA.isEmpty
dictionaryA.count
dictionaryA["Year"] = 2016
let year:Int? = dictionaryA["Year"]

//looping through dictionary
for (key, value) in dictionaryE {
    print("\(value)")
}

//removing value for key, the removeVlueForKey returns an Optional
if let key = dictionaryD.removeValueForKey("three"){ //the dictionary doesnt have value for this key
    print("value for key = three removed")
}else{
    print("no value for key = three found in dictionaryD")
}

//place all keys into an Array
var keys:[String] = Array(dictionaryE.keys)

print("-------End Dictionaries--------------")
//End Dictionaries


//Begin Sets
print("-------Begin Sets--------------------")

var setA:Set = [1,2,3]
print(setA)

setA.isEmpty
setA.count
setA.insert(3) // notice set will only hold unique objects so the extra 3 in there will not be inserted into set
print("setA after inserting another 3 into it: \(setA)")
setA.contains(1)

print("-------End Sets----------------------")
//End Sets

