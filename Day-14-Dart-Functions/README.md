# Day 14 - Dart Functions

## 📚 Topics Learned

Today I learned about functions and different types of parameters in Dart.

### 1. Functions

A function is a block of code that performs a specific task.

Example:

```dart
int addNumbers(int a, int b) {
  return a + b;
}
2. Positional Parameters

Positional parameters are passed according to their position.

Example:

int addNumbers(int a, int b) {
  return a + b;
}

print(addNumbers(10, 20));

Output:

30
3. Named Parameters

Named parameters are written inside {} and are passed using parameter names.

Example:

double areaRectangle({
  required double length,
  required double breadth,
}) {
  return length * breadth;
}

print(areaRectangle(length: 5.0, breadth: 2.0));

Output:

10.0
4. Default Parameters

Default parameters have a value that is used when no value is provided.

Example:

String greet([String name = "User"]) {
  return "Hello, $name!";
}

print(greet());
print(greet("Anusha"));

Output:

Hello, User!
Hello, Anusha!
