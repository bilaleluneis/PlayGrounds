/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/11/2016
...
Playground code snippets to learn about Properties in Swift 2
*/

import Foundation

struct Person {
    var firstName = ""
    var lastName = ""
    
    //computed property
    var fullName:String { return firstName + " " + lastName }
}

var person1 = Person(firstName:"Joe",lastName: "Doe")

struct Item {
    var name = ""
    var brand = ""
    
    //property with getter and setter
    var ItemDescription:String {
        get{ return name + " " + brand}
        set{
            //by default you have a property called newValue that holds the value you set to
            var splittedName = newValue.componentsSeparatedByString(" ")
            name = splittedName[0]
            brand = splittedName[1]
        }
    }
}

var GroceryItem = Item(name: "fish", brand: "chickenSea")
GroceryItem.ItemDescription
GroceryItem.ItemDescription = "Tuna Fish"
GroceryItem.ItemDescription

struct Planet {
    var count:Int = 0
    //example of property observer that watches and act as property value change
    var name:String {
        willSet{ print("about to add planet\(newValue)") }
        didSet{
            print("old planet Name: \(oldValue)")
            count++
            print("number of planets now is \(count)")
        }
    }
    
    init(){
       self.count = 0
        self.name = ""
    }
    
}

var earth = Planet() //notice property observer didnt react on init()
earth.name = "Earth"
earth.name = "Earth2"

// lazy stored property
// a property that will not init unless it is used / called.
class SolarSystem {
    // i could use [String] or Array<String> :)
    lazy var planets:Array<String> = self.initPlanets()
    
    //this will get called only once to init the values of the array.
    func initPlanets() -> Array<String> {
        print("init the Planets in the SolarSystem")
        return ["Earth","Mars","Venus","Jupiter"]
    }
}

var ourSolarSystem = SolarSystem()
ourSolarSystem.planets
ourSolarSystem.planets //this prooves that initPlanets gets called only once per instance
