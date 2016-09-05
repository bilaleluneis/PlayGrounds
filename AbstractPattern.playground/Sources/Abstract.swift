/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 02/13/2016
*/

import Foundation

public class Abstract {
    /*
        this is one way of creating an Abstract Class Pattern
        the only limitation is that errors relating to this 
        pattern will only be thrown at runtime and not compile time.
    */
    public init(){
        if type(of: self) === Abstract.self {
            fatalError("Cant Create Instance of Abstract as it is an Abstract Class!")
        }
        self.a = ""
    }
    
    public var a : String
    
    public func dump() -> Void {
        print("from the Abstract Class")
    }
    
    public func mustOverride() -> String {
        fatalError("Must Override in SubClass")
    }
    
}
