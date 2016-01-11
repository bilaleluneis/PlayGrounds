/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/10/2016
...
Playground code snippets to learn about Classes in Swift 2
*/

//classes can have dinit method that gets called when object is destroyed / removed from memory
class Person {
    var name:String
    var age:Int
    var weight:Float
    
    init(){
        self.name = ""
        self.age  = 0
        self.weight = 0.0
    }
    
    init(name:String, age:Int, weight:Float){
        self.name = name
        self.age = age
        self.weight = weight
    }
    
    deinit{
        print("Person instance with name: \(name) is now destroyed")
    }
}

//person instance will be destroyed once it reaches the end scope of the function
func testPersonDinit(personName:String, personAge:Int, personWeight:Float){
    Person(name:personName, age:personAge, weight:personWeight)
}

testPersonDinit("Joe", personAge:20, personWeight:150.5)


