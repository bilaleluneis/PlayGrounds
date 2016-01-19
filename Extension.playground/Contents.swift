/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/18/2016
...
Playground code snippets to learn about Extensions in Swift 2
*/

// extending the Int struct type
extension Int {
    var powerOf2:Int{
        return self * self
    }
    
}

var powerOf2Test:Int = 5.powerOf2