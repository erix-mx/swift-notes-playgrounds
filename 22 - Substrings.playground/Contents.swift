let greeting = "Hello, world!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index] //In memory
// beginning is "Hello"

// Convert the result to a String for long-term storage.
let newString = String(beginning)
