# Day 15 - Dart OOP Concepts 🚀

Today I learned and practiced important **Object-Oriented Programming (OOP) concepts in Dart** as part of my 100 Days of Code journey.

## 📚 Topics Covered

* Class, Object & Instance
* Constructors
* Getters & Setters
* Shorthand Syntax
* Inheritance
* `super` Keyword
* Method Overriding
* Abstract Classes
* `extends` Keyword
* `implements` Keyword
* Dart Mixins

## 💻 What I Practiced

### 1. Class, Object & Instance

Learned how to create a class and create objects/instances from it.

```dart
Student student = Student();
```

### 2. Constructors

Learned how constructors initialize objects and assign values.

```dart
Mathematics maths = Mathematics(34, 17);
```

### 3. Getters & Setters

Practiced controlling access to private variables using getters and setters.

```dart
number.setNumber = 5;
print(number.getNumber);
```

### 4. Shorthand Syntax

Learned arrow (`=>`) syntax for short functions.

```dart
String areaRectangle(double length, double breadth) =>
    "Area of rectangle is ${length * breadth}";
```

### 5. Inheritance

Learned how a child class can inherit properties and methods from a parent class.

```dart
class MobilePhone extends Electronics {
}
```

### 6. `super` Keyword

Learned how to access members of the parent class using `super`.

```dart
super.display();
```

### 7. Method Overriding

Learned how a child class can provide its own implementation of a parent method.

```dart
@override
void display() {
  print("This is a phone");
}
```

### 8. Abstract Class

Learned how abstract classes act as a blueprint for child classes.

```dart
abstract class Animal {
  void sound();
}
```

### 9. `extends` and `implements`

Learned the difference between inheritance and implementing a class contract.

```text
extends     → Inherit and reuse
implements  → Provide implementation
```

### 10. Dart Mixins

Learned how Mixins allow reusable functionality to be added to a class using `with`.

```dart
class SmartDevice with CameraMixin, GPSMixin {
}
```

## 🎯 Key Takeaways

* OOP helps organize code using classes and objects.
* Constructors initialize objects.
* Getters and setters provide controlled access to data.
* Inheritance promotes code reuse.
* `super` accesses parent class members.
* Method overriding allows child classes to customize behavior.
* Abstract classes provide a blueprint for subclasses.
* `extends` is used for inheritance.
* `implements` is used to implement a contract.
* Mixins provide reusable functionality across classes.

## 🛠️ Language

**Dart**

## 📅 100 Days of Code

**Day 15/100 — Dart OOP Concepts**

Progress: ✅ Completed

#100DaysOfCode #Dart #Flutter #OOP #LearningToCode
