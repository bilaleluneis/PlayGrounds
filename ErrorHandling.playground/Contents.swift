/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/22/2016
...
Playground code snippets to learn about Error Handling in Swift 2
*/

// the enum holding errors should conform to ErrorType protocol
enum MyErrors:ErrorType {
    case RecoverableError
    case FatalError
}

//example of fucntion that returns nothing and throws
func methodThatThrows() throws {
    throw MyErrors.RecoverableError
}

//example of function that returns a String and throws
func methodThatThrowsOrReturn(value:String?) throws ->String {
    if let localValue = value {
        return localValue
    }
    throw MyErrors.FatalError
}

func tester() {
    do {
        try methodThatThrowsOrReturn(nil)
    }catch MyErrors.FatalError{
        print("\(MyErrors.FatalError)")
    }catch let error {
        print(error)
    }
}

tester()

