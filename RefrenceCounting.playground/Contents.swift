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

class A {
    
    init() {
        
    }
    
    deinit {
        
    }
    
}

class B {
    
    init() {
        
    }
    
    deinit {
        
    }
    
}

