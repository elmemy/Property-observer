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

//Binding

class Binding<T>
{
    typealias Listener = (T) -> Void
    var listener : Listener?
    var value : T
    {
        didSet
        {
            listener?(value)
        }
    }
    init(_ value:T) {
        self.value = value
    }
    func bind(listener:Listener?){
        self.listener = listener
        listener?(value)
    }
}


let bindInt = Binding(20)
bindInt.bind
    {
        print("value changes: \($0)")
}
bindInt.value = 600
