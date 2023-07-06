struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")

/*
 Subscript Usage
 The exact meaning of “subscript” depends on the context in which it’s used. Subscripts are typically used as a shortcut for accessing the member elements in a collection, list, or sequence. You are free to implement subscripts in the most appropriate way for your particular class or structure’s functionality.
 For example, Swift’s Dictionary type implements a subscript to set and retrieve the values stored in a Dictionary instance. You can set a value in a dictionary by providing a key of the dictionary’s key type within subscript brackets, and assigning a value of the dictionary’s value type to the subscript:
 */

enum Planet : Int, CaseIterable {
    case mercury=1, venus, earth, mars, jupiter, saturn, uranus, neptune, unknown
    static subscript(n: Int) -> Planet {
        switch n {
        case 1...Planet.allCases.count:
                return Planet(rawValue: n) ?? unknown
        default:
            return unknown
        }
        
    }
}

let planet = Planet[8]
planet
