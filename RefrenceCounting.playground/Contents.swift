/*:
 Author: Bilal El Uneis (bilaleluneis@icloud.com)
 Since: 03/25/2016
 ...
 Playground code snippets to demo some usage and pitfalls of ARC !
 */

/*
    Memory Cycle happens only with Refrence Types, where 2 instances
    are holding a pointer strongly to each other which will prevent 
    any of them from been released and cause a memory leak in return.
 */

class Car {
    
    init() {
        print("Instance of class Car with Address \(unsafeAddressOf(self))")
    }
    
    deinit {
        print("Releasing memory for instance of class Car with Address \(unsafeAddressOf(self))")
    }
    
}

class Person {
    
    init(_ instanceOfA : A) {
        testMemoryCycle = instanceOfA
        print("Instance of class B with Address \(unsafeAddressOf(self))")
    }
    
    deinit {
        print("Releasing memory for instance of class B with Address \(unsafeAddressOf(self))")
    }
}

func testMemoryViaForcedScope() -> Void {
    _ = B(A())
}


testMemoryViaForcedScope()

//TODO: need to implement this
