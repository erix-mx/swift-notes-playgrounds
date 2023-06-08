//Guard

var people = ["name": "Eric Leal", "age": 28, "isMale": true] as [String: Any]

func validateLastName(people: [String: Any]) {
    guard let surname = people["surname"] else {
        print("Value doesn't exist")
        return
    }
    print("... continue program")
}


