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

