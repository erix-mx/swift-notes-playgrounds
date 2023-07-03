struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
    size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
// initialSquareCenter is at (5.0, 5.0)
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// Prints "square.origin is now at (10.0, 10.0)"


struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get { Point(x: origin.x + (size.width / 2), y: origin.y + (size.height / 2)) }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}
var square2 = AlternativeRect(origin: Point(x: 2.0, y: 3.0),
                   size: Size(width: 20.0, height: 20.0))
let initialSquareCenter2 = square2.center
// initialSquareCenter is at (5.0, 5.0)
square2.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square2.origin.x), \(square2.origin.y))")
// Prints "square.origin is now at (10.0, 10.0)"
