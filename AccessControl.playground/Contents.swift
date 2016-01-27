/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 01/26/2016
...
Playground code snippets to learn about Access Control in Swift 2
*/

// seems that swift will call the parent default init() even if you dont do it yourself
// try commenting out the super.init in Person class and see
var human:HumanAbstract = Person("John")

/*
    bellow will error, because the init is private
    it looks like in swift the way to go in creating abstract class
    will also require you to create one concreet class in same file, because you
    wont be able to extend the abstract from outside the file as init will throw
    error that you need to call super.init() but it is not visible at this point
*/

//var error:HumanAbstract = HumanAbstract()
