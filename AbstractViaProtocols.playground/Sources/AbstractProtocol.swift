/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 02/27/2016
*/

import Foundation

/*
looks like access modifiers are not allowed in protocol declaration!
and seems like by default everything in the protocol declaration will
have same access level as the protocol itself!
*/
public protocol AbstractProtocol{
    var a:String {get set}
    func methodWithDefualtImplViaExtention() -> Void
    func methodThatWillRequireImplByOtherClasses() -> Void
}


//looks like diff access modifiers are allowed in extensions
extension AbstractProtocol{
    
    public func methodWithDefualtImplViaExtention() -> Void{
        print("default impl if not overridden!")
    }
    
    internal func methodAvailableInternallyOnly() -> Void {
        print("This method cant be accessed outside the module")
    }
    
    private func helperMethodThatCanOnlyBeAccessedInThisFileScope() -> Void {
        print("private helper method")
    }
    
}

/*
    because this class is declared in here, it is able to see the private method
    inside the protocol extension
*/
internal class ClassThatHasAccessToEverthingInThisFile : AbstractProtocol {
    var a:String = ""
    func methodThatWillRequireImplByOtherClasses() -> Void {
        helperMethodThatCanOnlyBeAccessedInThisFileScope()
    }
}

