for character in "Dog!🐶" {
    print(character)
}
// D
// o
// g
// !
// 🐶

let exclamationMark: Character = "!"

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// Prints "Cat!🐱"

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
// welcome now equals "hello there"

welcome.append(exclamationMark)

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
