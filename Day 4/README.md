# Day 4 - Dart

## Topic: If Else Statement

Today I learned conditional statements in Dart.

### Concepts Covered

* `if` statement
* `if...else` statement
* Nested `if`
* `if...else if` statement

---

## 1. If Statement

The `if` statement executes a block of code when the given condition is true.

```dart
int age = 20;

if (age >= 18) {
  print("You are an adult");
}
```

---

## 2. If...Else Statement

The `if...else` statement executes one block when the condition is true and another block when the condition is false.

```dart
int number = 7;

if (number % 2 == 0) {
  print("Number is even");
} else {
  print("Number is odd");
}
```

---

## 3. Nested If

A nested `if` means placing one `if` statement inside another `if` statement.

```dart
int marks = 85;

if (marks >= 40) {
  if (marks >= 80) {
    print("Excellent marks");
  }
}
```

---

## 4. If...Else If

The `if...else if` statement is used to check multiple conditions.

```dart
int score = 75;

if (score >= 90) {
  print("Grade A+");
} else if (score >= 80) {
  print("Grade A");
} else if (score >= 70) {
  print("Grade B");
} else if (score >= 60) {
  print("Grade C");
} else {
  print("Fail");
}
```

---

## Output

```text
You are an adult
Number is odd
Excellent marks
Grade B
```

---

## What I Learned

I learned how to use conditio
