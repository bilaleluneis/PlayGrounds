/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 03/14/2016
...
Playground code snippets to demo some weird but valid swift code
*/

/*
    Structs are pass by Value Object, but a struct can actually
    have a class definition inside it too ! wonder what that does
    when struct i passed by value , but contain an object that is 
    passed by refrence!
*/

public struct PushingStructs {
    
    // create class def inside struct
    public class AclassInsideStruct {
        public var a : String
        internal var b : String
        private var c : String
        
        init(){
            a = "a"
            b = "B"
            c = "C"
        }
    }
    
    public var aClasssInstance: AclassInsideStruct
    
    public init(){
        aClasssInstance = AclassInsideStruct()
    }
}

var testPushingStructs = PushingStructs()
