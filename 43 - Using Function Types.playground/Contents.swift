
func printHW(name: String) {
    print(name)
} // () -> Void


func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

/*
 You use function types just like any other types in Swift. For example, you can define a constant or variable to be of a function type and assign an appropriate function to that variable:
 
 var mathFunction: (Int, Int) -> Int = addTwoInts
*/

var mathFunction: (Int, Int) -> Int = addTwoInts

/*
 This can be read as:
 “Define a variable called mathFunction, which has a type of ‘a function that takes two Int values, and returns an Int value.’ Set this new variable to refer to the function called addTwoInts.”
 The addTwoInts(_:_:) function has the same type as the mathFunction variable, and so this assignment is allowed by Swift’s type-checker.
 You can now call the assigned function with the name mathFunction:
 */

print("Result: \(mathFunction(2, 3))")
// Prints "Result: 5"

/*
 A different function with the same matching type can be assigned to the same variable, in the same way as for nonfunction types:
 */

mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2, 3))")
// Prints "Result: 6"


//More samples

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}

printMathResult(addTwoInts, 3, 5)
// Prints "Result: 8"

//Function Types as Return Types

func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the stepBackward() function

