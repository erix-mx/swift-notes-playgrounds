
func canThrowError() throws {
    //Danger code
}

do {
    try canThrowError()
    // Here doesn't error
} catch {
    // We have a error
}


//Sample
func makeASandwich() throws {
    
}

do {
    try makeASandwich()
} catch {
    print("We have error!")
}

