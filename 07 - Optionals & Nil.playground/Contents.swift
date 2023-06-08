

let possibleAge = "x"
let convertedAge = Int(possibleAge) //Int? <- Optional

var serverResponseCode: Int? = 404
serverResponseCode = nil

//Sample

var surveyAnswer: String?
//print( surveyAnswer != nil ? surveyAnswer : "Unknow")

//Force unwrapping in optional var

if convertedAge != nil {
    print("Valid age and is \(convertedAge!)")
} else {
    print("Invalid age")
}






