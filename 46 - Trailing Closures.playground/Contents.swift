func someFunctionThatTakesAClosure(closure: () -> Void) {
    // function body goes here
}

// Here's how you call this function without using a trailing closure:


someFunctionThatTakesAClosure(closure: {
    // closure's body goes here
})

// Here's how you call this function with a trailing closure instead:


someFunctionThatTakesAClosure() {
    // trailing closure's body goes here
}

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
let reversedNames = names.sorted { $0 > $1}

let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

let numbers = [12, 23, 43, 12, 43]
let numberStrings = numbers.map { number -> String in
    
    var number = number
    var output = ""
    
    repeat {
        if let value = digitNames[number % 10] {
            output = value + output
            number /= 10
        }
    } while number > 0
    
    return output
    
}


let negativeNumbers = [-12, -23, -43, 12, -43]
let negativeNumberStrings = numbers.map { number -> String in
    
    var number = number
    var output = ""
    
    repeat {
        if let value = digitNames[number % 10] {
            output = value + output
            number /= 10
        }
    } while number > 0
    
    return output
    
}

//Capturing Values

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()
incrementBySeven()
incrementBySeven()
