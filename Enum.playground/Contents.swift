/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/08/2016
...
Playground code snippets to learn about Enums in Swift 2
*/

enum Weather {
    case cold
    case hot
    case warm
    case chilly
    case cool
    case freezing
}

//declaring var to hold enum value
var weatherToday:Weather = Weather.freezing

//you can also use infrence 
weatherToday = .cold

//enum raw value Int
enum Temprature: Int {
    case boiling = 100
    case freezing = 0
}

var tempLabel:Temprature = .boiling
var tempValue = Temprature.boiling.rawValue
tempLabel = Temprature(rawValue: tempValue)! //this method or function returns an Optional

//enum raw value String
enum Faces:String {
    case happy
    case sad
    case wink
    case smile = "smile"
}
//by default raw value will be the string represntation of the enum case value
var faceExpression = Faces(rawValue: "happy")!

//enum associated value, I wasnt sure if I can have different types for associated values, but seem like it is Ok
enum Color{
    case red(rgb:String)
    case blue(level:Int)
    case white(Bool) //you can omit paramater if you wanted to
}

let colorWhite = Color.white(true)
let colorRed = Color.red(rgb: "11111")
let colorBlue = Color.blue(level: 10)

func determineColor(colorEnum:Color) {
    switch colorEnum {
        case .white(let isWhite): // this is a way to assing associate value to a constant
            print("white color is: \(isWhite)")
        case .blue(let blueLevel):
            print("blue level is: \(blueLevel)")
        case .red(let redRgbValue):
            print("red rgb value is \(redRgbValue)")
    }
}

determineColor(colorWhite)
determineColor(colorRed)
determineColor(colorBlue)
