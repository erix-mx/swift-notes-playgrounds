//Ranges

//Close Range operator
for idx in 1...5 {
    print(idx)
}

//Half-Open range operator
let names = ["erix", "Eduard", "Robert"]
let count = names.count

for i in 0..<count {
    print("name: \(names[i])")
}

for name in names[2...] {
    print(name)
}

for name in names[...1] {
    print(name)
}


for name in names[..<1] {
    print(name)
}


let range = ...5
range.contains(7)
range.contains(5)
range.contains(-3)
