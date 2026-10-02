void main() {
  // Positional parameters
  print(addNumbers(10, 20));

  // Named parameters
  print(areaRectangle(length: 5.0, breadth: 2.0));

  // Default parameters
  print(greet());
  print(greet("Anusha"));
}

// 1. Positional Parameters
int addNumbers(int a, int b) {
  return a + b;
}

// 2. Named Parameters
double areaRectangle({
  required double length,
  required double breadth,
}) {
  return length * breadth;
}

// 3. Default Parameter
String greet([String name = "User"]) {
  return "Hello, $name!";
}
