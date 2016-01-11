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
    
    deinit{
        print("Person instance with name: \(name) is now destroyed")
    }
}
