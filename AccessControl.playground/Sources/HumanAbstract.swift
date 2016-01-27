/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/26/2016
*/

public class HumanAbstract {
    private init(){
        print("Human Abstract class Init")
    }
}

/*
    not sure how much sense this makes!! but in swift
    if the classes are in same file.. you can almost forget
    about access control, because as you see in this example
    i was able to call the private init from Human class!!
*/
public class Person : HumanAbstract {
    public init(_ personName:String){
        super.init()
        print("Person Concreet Init")
    }
}
