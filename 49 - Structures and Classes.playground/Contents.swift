//Las estructuras y los enumerados son asignados por COPIA

/*
 Structures and classes are general-purpose, flexible constructs that become the building blocks of your program’s code. You define properties and methods to add functionality to your structures and classes using the same syntax you use to define constants, variables, and functions.
 Unlike other programming languages, Swift doesn’t require you to create separate interface and implementation files for custom structures and classes. In Swift, you define a structure or class in a single file, and the external interface to that class or structure is automatically made available for other code to use.
 */

struct SomeStructure {
    // structure definition goes here
}
class SomeClass {
    // class definition goes here
}

struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print("The width of someResolution is \(someResolution.width)")
// Prints "The width of someResolution is 0"

print("The width of someVideoMode is \(someVideoMode.resolution.width)")
// Prints "The width of someVideoMode is 0"

someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")
// Prints "The width of someVideoMode is now 1280"

let vga = Resolution(width: 640, height: 480)



//Structures and Enumerations Are Value Types
/*
 A value type is a type whose value is copied when it’s assigned to a variable or constant, or when it’s passed to a function.
 You’ve actually been using value types extensively throughout the previous chapters. In fact, all of the basic types in Swift — integers, floating-point numbers, Booleans, strings, arrays and dictionaries — are value types, and are implemented as structures behind the scenes.
 All structures and enumerations are value types in Swift. This means that any structure and enumeration instances you create — and any value types they have as properties — are always copied when they’re passed around in your code.
 */

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2048

print("cinema is now \(cinema.width) pixels wide")
// Prints "cinema is now 2048 pixels wide"

print("hd is still \(hd.width) pixels wide")
// Prints "hd is still 1920 pixels wide"



//The same behavior applies to enumerations:
enum CompassPoint {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}
var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection.turnNorth()


print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")
// Prints "The current direction is north"
// Prints "The remembered direction is west"
