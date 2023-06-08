let dogString = "Dog‼🐶"

for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("")

for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("")

for codeUnit in dogString.unicodeScalars {
    print("\(codeUnit) ", terminator: "")
}
print("")
