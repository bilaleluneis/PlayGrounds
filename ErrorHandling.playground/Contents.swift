/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/22/2016
...
Playground code snippets to learn about Error Handling in Swift
*/

// the enum holding errors should conform to Error protocol
enum MyErrors:Error {
    case RecoverableError
    case FatalError
}

//example of fucntion that returns nothing and throws
func methodThatThrows() throws {
    throw MyErrors.RecoverableError
}

//example of function that returns a String and throws
func methodThatThrowsOrReturn(_ value:String?) throws ->String {
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

// example using try! , which basically saying crash if the call throws
func crashIfThrows() {
    try! methodThatThrows()
}

//crashIfThrows() //uncomment to see the error thrown

//example using try? .. which returns Optional (a value or nil) depending if try throws or not
func dontCrashWhenThrows() -> String? {
    let result = try? methodThatThrowsOrReturn(nil)
    return result ?? "Nothing"
}
dontCrashWhenThrows()


