
//Comparisons

1 == 1
1 == 2
1 != 2
1 > 1
2 > 2
2 >= 1
1 <= 3

let name = "erix"
if name == "erix" {
    print("Hi \(name)")
} else {
    print("How are you?")
}

(1, "hello") < (3, "hi")
(4, "hello") < (3, "hi")
(3, "hello") < (3, "hi")

//Booleans can't be compared in tuples 
//("dog", false) < ("false", true)
