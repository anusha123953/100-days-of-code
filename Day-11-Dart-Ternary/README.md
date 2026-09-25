# 🐦 100 Days of Code — Day 11

## Dart Ternary Operator

Today I learned and practiced the **Ternary Operator in Dart**.

## 📚 Topics Covered

- Ternary operator
- Using conditions with `?` and `:`
- Checking age
- Checking whether a number is even or odd
- Checking pass or fail
- Using ternary conditions with variables

## 💻 Practice Code

```dart
void main() {
  // Example 1: Check age
  int age = 20;

  String ageResult = age >= 18 ? "Adult" : "Minor";
  print(ageResult);

  // Example 2: Check even or odd
  int number = 10;

  String numberResult = number % 2 == 0 ? "Even" : "Odd";
  print(numberResult);

  // Example 3: Check pass or fail
  int marks = 75;

  String result = marks >= 40 ? "Pass" : "Fail";
  print(result);
}
