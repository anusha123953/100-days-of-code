void main() {
  // While Loop
  int i = 1;

  while (i <= 5) {
    print("Number: $i");
    i++;
  }

  // Switch Case
  int day = 3;

  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    default:
      print("Invalid day");
  }

  // Break Statement
  for (int j = 1; j <= 5; j++) {
    if (j == 4) {
      break;
    }
    print("Break Example: $j");
  }

  // Continue Statement
  for (int k = 1; k <= 5; k++) {
    if (k == 3) {
      continue;
    }
    print("Continue Example: $k");
  }
}
