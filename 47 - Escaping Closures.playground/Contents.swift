//Escaping Closures
/*
 A closure is said to escape a function when the closure is passed as an argument to the function, but is called after the function returns. When you declare a function that takes a closure as one of its parameters, you can write @escaping before the parameter’s type to indicate that the closure is allowed to escape.
 */

var completionHandlers: [() -> Void] = []

//Escaping
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

//No Escaping
func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}


class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100 } //Self for escaping
        someFunctionWithNonescapingClosure { x = 200 }
    }
}

let instance = SomeClass()
instance.doSomething()

print(instance.x)
// Prints "200"

completionHandlers.first?()
print(instance.x)
// Prints "100"

