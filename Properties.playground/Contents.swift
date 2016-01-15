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
