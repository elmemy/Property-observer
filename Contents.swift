import UIKit

var str = "Hello, Observe"


class Observe
{
    var foo = 1
    {
        didSet
        {
            print("Value Changed : \(foo)")
        }
    }
}

let objectToObserve = Observe()
objectToObserve.foo = 50



//Observe By Generic

class Box<T>
{
    var value : T
    {
        didSet
        {
            print("New value : \(value)")
        }
    }
    init(_ value:T) {
        self.value = value
    }
}


let box = Box(20)
box.value = 200

