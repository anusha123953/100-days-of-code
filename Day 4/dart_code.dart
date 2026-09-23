void main() {
  // 1. if statement
  int age = 20;

  if (age >= 18) {
    print("You are an adult");
  }

  // 2. if...else statement
  int number = 7;

  if (number % 2 == 0) {
    print("Number is even");
  } else {
    print("Number is odd");
  }

  // 3. Nested if statement
  int marks = 85;

  if (marks >= 40) {
    if (marks >= 80) {
      print("Excellent marks");
    }
  }

  // 4. if...else if statement
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
}
