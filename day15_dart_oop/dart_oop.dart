// DAY 15 - DART OOP CONCEPTS
// Topics:
// Class, Object, Instance, Constructors,
// Getters & Setters, Shorthand Syntax,
// Inheritance, super, Method Overriding,
// Abstract Class, extends, implements, Mixins

// --------------------------------------------------
// 1. CLASS, OBJECT & INSTANCE
// --------------------------------------------------

class Student {
  String name = "Anusha";
  int age = 20;

  void display() {
    print("Name: $name");
    print("Age: $age");
  }
}

// --------------------------------------------------
// 2. CONSTRUCTOR
// --------------------------------------------------

class Mathematics {
  int n1;
  int n2;

  Mathematics(this.n1, this.n2);

  int addition() {
    return n1 + n2;
  }
}

// --------------------------------------------------
// 3. GETTERS & SETTERS
// --------------------------------------------------

class Number {
  int _num = 0;

  void set setNumber(int value) {
    _num = value * 10;
  }

  int get getNumber => _num;
}

// --------------------------------------------------
// 4. SHORTHAND SYNTAX
// --------------------------------------------------

String areaRectangle(double length, double breadth) =>
    "Area of rectangle is ${length * breadth}";

// --------------------------------------------------
// 5. INHERITANCE
// --------------------------------------------------

class Electronics {
  double height = 10;
  double width = 20;

  void watch() {
    print("Watching");
  }
}

class MobilePhone extends Electronics {
  void call() {
    print("Calling");
  }

  void games() {
    print("Playing games");
  }
}

class Television extends Electronics {
  void channels() {
    print("Changing channels");
  }
}

// --------------------------------------------------
// 6. SUPER KEYWORD & METHOD OVERRIDING
// --------------------------------------------------

class Device {
  String name = "Electronic Device";

  void display() {
    print("This is a device");
  }
}

class Phone extends Device {
  String name = "Mobile Phone";

  @override
  void display() {
    print(name);
    print(super.name);
    super.display();
    print("This is a phone");
  }
}

// --------------------------------------------------
// 7. ABSTRACT CLASS
// --------------------------------------------------

abstract class Animal {
  void sound();
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

// --------------------------------------------------
// 8. IMPLEMENTS
// --------------------------------------------------

class Camera {
  void takePhoto() {
    print("Taking photo");
  }
}

class GPS {
  void getLocation() {
    print("Getting location");
  }
}

class Smartphone implements Camera, GPS {
  @override
  void takePhoto() {
    print("Smartphone camera");
  }

  @override
  void getLocation() {
    print("Smartphone GPS");
  }
}

// --------------------------------------------------
// 9. MIXINS
// --------------------------------------------------

mixin CameraMixin {
  void capture() {
    print("Capturing photo");
  }
}

mixin GPSMixin {
  void location() {
    print("Getting location");
  }
}

class SmartDevice with CameraMixin, GPSMixin {
  void call() {
    print("Calling");
  }
}

// --------------------------------------------------
// MAIN FUNCTION
// --------------------------------------------------

void main() {
  print("===== CLASS, OBJECT & INSTANCE =====");

  Student student = Student();
  student.display();

  print("\n===== CONSTRUCTOR =====");

  Mathematics maths = Mathematics(34, 17);
  print("Addition: ${maths.addition()}");

  print("\n===== GETTER & SETTER =====");

  Number number = Number();
  number.setNumber = 5;
  print("Number: ${number.getNumber}");

  print("\n===== SHORTHAND SYNTAX =====");

  print(areaRectangle(34.7, 45.8));

  print("\n===== INHERITANCE =====");

  MobilePhone mobile = MobilePhone();

  print("Height: ${mobile.height}");
  mobile.watch();
  mobile.call();
  mobile.games();

  Television television = Television();

  print("Width: ${television.width}");
  television.watch();
  television.channels();

  print("\n===== SUPER & METHOD OVERRIDING =====");

  Phone phone = Phone();
  phone.display();

  print("\n===== ABSTRACT CLASS =====");

  Dog dog = Dog();
  dog.sound();

  print("\n===== IMPLEMENTS =====");

  Smartphone smartphone = Smartphone();
  smartphone.takePhoto();
  smartphone.getLocation();

  print("\n===== MIXINS =====");

  SmartDevice smartDevice = SmartDevice();
  smartDevice.call();
  smartDevice.capture();
  smartDevice.location();
}
