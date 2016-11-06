var optionalName: String? = "John Applessed"
var greeting = "Hello"
if let name = optionalName {
	greeting = "Hello, \(name)"
}
print(greeting)