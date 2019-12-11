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
