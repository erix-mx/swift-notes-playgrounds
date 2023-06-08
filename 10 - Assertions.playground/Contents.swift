
// Assertions and preconditions

//Assertion only debug mode

let age = -5 // <- Imagine
assert(age >= 0, "Age isn't valid!")
if age > 10 {
    print("You are old")
} else if age >= 0 {
    print("You are a baby!")
} else {
    assertionFailure("You don't exist yet!")
    print("You don't exist yet")
}

//Preconditions (In production)

precondition(age > 10)




