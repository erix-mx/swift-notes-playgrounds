
//Swift has tuple in its core

//Syntax

let https404Error = (404, "Site not found")
let (statusCode, statusMessage) = https404Error

print("Status code is \(statusCode)")
print("Message is \(statusMessage)")

let (justStatusCode, _) = https404Error

print("Status code is \(justStatusCode)")

print("Status code is \(https404Error.0) and message \(https404Error.1)")


let http200Status = (status: 200, message: "Success")
print("status code is \(http200Status.message) 😨")



