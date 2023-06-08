
//Implicit unwrap

let assumedString: String! = "String unwrap implicit from optional"
let implicitString: String = assumedString

if let goodString = assumedString {
    print("The value is: \(goodString)")
}

