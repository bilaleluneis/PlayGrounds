/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/10/2016
...
Playground code snippets to learn about Classes in Swift 2
*/

//classes can have dinit method that gets called when object is destroyed / removed from memory
class Person {
    var firstName:String
    var lastName:String
    var age:Int
    var weight:Float
    
    //computed property
    var fullName:String {
        get{ return firstName + " " + lastName}
        set(name){
            self.fullName =  name
        }
    }
    
    init(){
        self.firstName = ""
        self.lastName = ""
        self.age  = 0
        self.weight = 0.0
    }
    
    init(firstName:String, lastName:String, age:Int, weight:Float){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.weight = weight
    }
    
    deinit{
        print("Person instance with name: \(firstName) is now destroyed")
    }
}

//person instance will be destroyed once it reaches the end scope of the function
func testPersonDinit(personFirstName:String, personLastName:String, personAge:Int, personWeight:Float){
    Person(firstName:personFirstName, lastName: personLastName, age:personAge, weight:personWeight)
}

testPersonDinit("Joe",personLastName: "Doe", personAge:20, personWeight:150.5)

var person1 = Person()
person1.firstName = "James"
person1.lastName = "Bond"
let name = person1.fullName
print(name)


