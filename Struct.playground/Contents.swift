/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/09/2016
...
Playground code snippets to learn about Structs in Swift 2
*/

//basic structure
struct StreetInfo {
    var name:String = ""
    var intersection:String = ""
}

struct CityInfo {
    var name = ""
    var state = ""
    var zipCode:Int = 0
}

struct ResidenceInfo {
    var number:Int = 0
    var type:String = ""
}

// complex structure composed of other structs and methods or functions

struct Address {
    var street:StreetInfo = StreetInfo()
    var city:CityInfo = CityInfo()
    var residence:ResidenceInfo = ResidenceInfo()
    
    //structs can have functions or methods
    func addressInfo() -> String {
        var address:String
        address  = street.name + " " + city.name + " "
        address += city.state + " \(city.zipCode) "
        address += residence.type + " \(residence.number)"
        return address
    }
    
    //structs cant have methods or functions that modify internal data
    //if you want to allow this you need to mark function as mutating
    mutating func changeStreetName(newStreetName:String){
        self.street.name = newStreetName
    }
}

//strutcs will provide a default memberwise initalizers
let myStreet = StreetInfo(name:"some lane", intersection: "some intersection")
let myCity = CityInfo(name: "myCity", state: "myState", zipCode: 22897)
let myResidence = ResidenceInfo(number: 1000, type: "condo")
let myAddress = Address(street: myStreet, city: myCity, residence: myResidence)

print(myAddress.addressInfo())

//structs can have initalizers
struct CanFood {
    var brand:String
    var expireDate:String
    
    init(){
        self.brand = ""
        self.expireDate = ""
    }
    
    init(brand:String, expireDate:String){
        self.brand = brand
        self.expireDate = expireDate
    }
}

var canItem1 = CanFood()
var canItem2 = CanFood(brand: "kelogs", expireDate: "01/01/2018")