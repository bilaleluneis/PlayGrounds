/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/19/2016
...
Playground code snippets to learn about Protocols in Swift 2
*/

// snippet of simple use of protocol to define instance via interface instead of implementation
enum Gender:String{
    case female
    case male
}

protocol Human {
    
    var gender:Gender {get set} //property can be set and get
}

class Woman : Human {
    
    var gender:Gender
    var isMother:Bool
    
    init(){
        gender = .female
        isMother = false
    }
    
}

class Man : Human {
    
    var gender:Gender
    var isFather:Bool
    
    init(){
        gender = .male
        isFather = false
    }
    
}

var john:Human = Man()
var lucy:Human = Woman()

john.gender
lucy.gender

let people:[Human] = [john,lucy]
for person in people {
    print(person.gender)
    //snippet of using is and as 
    if person is Man {
        //force down cast to Man and access isFather property
        (person as! Man).isFather
    }
}
