
/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 03/20/2016
...
Playground code snippets to demo some more complex Protocol usage!
*/

// this protocol can only be implemented by Class type
public protocol ClassProtocolOnly : class {
    
    func method() -> Void
    init(_ whatToPrint : String)
    
}


class ProtocolImplementer : ClassProtocolOnly {
    
    func method() -> Void {
        print("method implemented")
    }
    
    /*
        the compiler require this init to be declared as required
        so that any subclass will have tooverride and make use of
        in order to satisfy protocol requirements I guess!
    */
    required init(_ whatToPrint:String){
        print(whatToPrint)
    }
}

class ClassExtender : ProtocolImplementer {
    
    /*
        by default this init is been overriden
        without having to use the override keyword.
        it is implicit in this case.
    */
    required init(_ whatToPrint: String) {
        super.init(whatToPrint)
    }
}

/* 
    a general protocol that can be implemented by Class,Struct and Enum.
    protocols that will be used in Enums cant have any computed properties.
    so Im guesssing just functions?!
 */

public protocol GeneralProtocol {
    
    func typeDescription() -> String
    
}

extension GeneralProtocol {

    public func typeDescription () -> String {
        return "GeneralProtocol"
    }
}

struct StructImplementingProtocol : GeneralProtocol {
    
    func typeDescription() -> String {
        return "Struct Conforming to Protocol"
    }
    
}

enum EnumImplementingProtocol : GeneralProtocol {
    
    case hot
    case cold
    case warm
    case freezing
    
    init(temp :  Int){
        if temp <= 0 { self = .freezing }
        else if temp  > 0 && temp < 30 { self = .cold }
        else { self = .hot }
    }
    
    func typeDescription() -> String {
        return "Enum Conforming to Protocol"
    }
}

class ClassImplementingProtocol : GeneralProtocol {
    
    func typeDescription() -> String {
        return "Class Conforming to Protocol"
    }
}

let valueType : GeneralProtocol = StructImplementingProtocol()
let enumType : GeneralProtocol = EnumImplementingProtocol(temp: 10)
let refrenceType : GeneralProtocol = ClassImplementingProtocol()

// this is valid because the enum, class and struct conform to GeneralProtocol Protocol
let protocolArray:[GeneralProtocol] = [valueType, enumType, refrenceType]

for aType in protocolArray {
    let typeIs = aType.typeDescription()
    print("type pulled from Collection is of " +  typeIs)
}
