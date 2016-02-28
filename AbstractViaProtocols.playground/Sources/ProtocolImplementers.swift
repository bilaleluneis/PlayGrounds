/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 02/27/2016
*/

import Foundation

public class A : AbstractProtocol {
    public var a:String //must be public because protocol is declared public
    public init(){
        a = ""
        //can access internal scope methods because this class is in same module
        self.methodAvailableInternallyOnly()
    }
    //must be public because protocol is declared public
    public func methodThatWillRequireImplByOtherClasses() -> Void{
        print("provide imple of method that is required!")
    }
}

