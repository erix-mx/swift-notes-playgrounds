/*
 { (params) -> type in
    //clousure code
 }
 */

var names = ["Eric", "Juan", "Fernanda", "Roberto"]
names.sort(by: { (s1: String, s2: String) -> Bool in
    return s1 < s2
})

var names2 = ["Eric", "Juan", "Fernanda", "Roberto"]
names2.sort(by: { s1, s2 -> Bool in return s1 < s2 })

var names3 = ["Eric", "Juan", "Fernanda", "Roberto"]
names2.sort(by: { s1, s2 -> Bool in s1 < s2 })

var names4 = ["Eric", "Juan", "Fernanda", "Roberto"]
names2.sort(by: { $0 < $1 })

var names5 = ["Eric", "Juan", "Fernanda", "Roberto"]
names2.sort(by: < )
