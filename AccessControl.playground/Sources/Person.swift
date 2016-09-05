import Foundation

/*:
 Author: Bilal El Uneis (bilaleluneis@icloud.com)
 Since: 09/05/2016
 */


/*
 looks like in swift 3 access control changed a bit.
 and now it makes more sense. you cannot call a private
 method from parent class v.s in swift 2 that method
 was visible withen the file.
 */
public class Person : HumanAbstract {
    public init(_ personName:String){
        super.init()
        print("Person Concreet Init")
    }
    
}
