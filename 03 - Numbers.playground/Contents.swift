
//Numbers

let minValue8 = UInt8.min
let maxValue8 = UInt8.max

let minValue16 = UInt16.min
let maxValue16 = UInt16.max

let minValue32 = UInt32.min
let maxValue32 = UInt32.max

let minValue64 = UInt64.min
let maxValue64 = UInt64.max


//Integer
let age = 31


//Float
let f1: Float = 3.14159265

//Double
let d1: Double = 3.14159265


//Examples
let meaningOfLife = 42 // Int
let pi = 3.14159265 // Double
let anotherPi = 2 + 0.141516 // Double


//Literals

let decimalInteger = 17 // 17
let binaryInteger = 0b10001 // 1*2^4 + 0*2^3 + 0*2^2 + 0*3^1 + 0*2^0
let octalInteger = 0o21 // 2*8^1 + 1*8^0
let hexadecimalInteger = 0x11 //1*16^1 + 1*16^0

let decimalDouble = 12.434
let exponentDouble = 1.2434e1
let hexadecimalDouble = 0xC.3p0

let oneMillion = 1_000_000
let justMoreThanAMillion = 1_000_000.000_000_1

//Some errors
// let cannotBeNegative: UInt8 = -1
// let tooBig: UInt8 = UInt8.max + 1


//Casting
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
//let twoThousandAndOne = twoThousand + one ❌
let twoThousandAndOne = twoThousand + UInt16(one) // ✅


let three = 3
let decimalNumber = 1.14159
//let piNUm = three + decimalNumber // ❌
let piNUm = Double(three) + decimalNumber


let integerPi = Int(piNUm)








