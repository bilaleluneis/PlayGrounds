/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 02/27/2016
*/

import Foundation

public class A : AbstractProtocol {
    public var a:String //must be public because protocol is declared public
    public init(){
        a = ""
        self.methodAvailableInternallyOnly()
    }
    //must be public because protocol is declared public
    public func methodThatWillRequireImplByOtherClasses() -> Void{
        print("provide imple of method that is required!")
    }
}

