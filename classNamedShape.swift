class NamedShape {
  var numberOfSides: Int = 0
  var name: String

  init(name: String) {
    self.name = name
  }

  func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
  }
}
class Square: NamedShape {
  var sideLength: Double

  init(sideLength: Double, name: String) {
    self.sideLength = sideLength
    super.init(name: name)
    numberOfSides = 4
  }

  func area() -> Double {
    return sideLength * sideLength
  }
  override func simpleDescription() -> String {
    return "A square with sides of length \(sideLength)"
  }
}
let test = Square(sideLength: 5.2, name: "my test square")
print("\(test.simpleDescription()) has area of \(test.area())")

class EquilateralTriangle: NamedShape {
  var sideLength: Double = 0.0

  init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        super.numberOfSides = 3
  }

  var perimeter: Double {
    get {
      return 3.0 * sideLength
    }
    set {
      sideLength = newValue / 3.0
    }
  }

  override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
  }
}
print("===============EquilateralTriangle==================")
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)
