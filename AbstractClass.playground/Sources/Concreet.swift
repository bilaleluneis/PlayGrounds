/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 02/13/2016
*/

public class Concreet : Abstract {
    public override init(){
        super.init()
        self.a = "Concreet"
    }
    
    public override func dump() {
        print("from Concreet Class")
    }
    
    /*
    if the bellow is commented out and call made in the playground
    will end up with runtime error
    */
    public override func mustOverride() -> String {
        return "is Overrriden in Concreet"
    }
    
}

