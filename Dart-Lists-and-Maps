void main() {
  String name = "Anusha";
  bool male = true;
  int age = 21;

  // List
  List<String> fruits = ["mango", "apple"];

  // Map
  Map<String, dynamic> myData = {
    "name": name,
    "age": age,
    "male": male,
    "fruits": fruits,
  };

  // Add multiple items
  fruits.addAll(["banana", "guava", "grapes"]);

  // Sort the List
  fruits.sort();

  // Check if an item exists
  bool val = fruits.contains("grapes");

  // Filter the List
  var result = fruits.where((element) => element == "banana");

  // Map operations
  print(myData);
  print(myData["age"]);
  print(myData.keys.toList());
  print(myData.values.toList());
  print(myData.containsKey("name"));

  // Print filtered result
  print(result.toList());

  // Print the final List
  print(fruits);
}
