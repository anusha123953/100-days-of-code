Python Lists — Day 3 
LECTURE 5 

This is my Day 3 practice as part of my 100 Days of Code journey.

Today I learned the fundamentals of Python Lists, including creating lists, accessing elements, negative indexing, adding and removing elements, and storing different data types.

📚 Topics Covered
Creating a List
Printing a List
Positive Indexing
Negative Indexing
Accessing List Elements
remove()
append()
Lists with Different Data Types
Integer List vs String List
💻 Code
items = ["jnanada", "ubs", "rns"]

print(items)

print(items[0])

print(items[-2])

items.remove("rns")

print(items)

items.append("mom's magic")

print(items)

my_list = ["python", 100, 99.5, "False"]

print(my_list)

numbers = [5, 10, 15, 20, 25]

print(numbers)

a = [10, 20, 30]

b = ["10", "20", "30"]

print(a)

print(b)
🧠 Key Learnings
1. Creating Lists

A list stores multiple values in a single variable.

items = ["jnanada", "ubs", "rns"]
2. Positive Indexing

Python list indexing starts from 0.

print(items[0])

Output:

jnanada
3. Negative Indexing

Negative indexing starts from the end of the list.

print(items[-2])

Output:

ubs
4. Removing Elements

The remove() method removes a specified value.

items.remove("rns")
5. Adding Elements

The append() method adds an element to the end of the list.

items.append("mom's magic")
6. Different Data Types

Python lists can contain different types of data.

my_list = ["python", 100, 99.5, "False"]

This list contains:

String
Integer
Float
String

"False" is a string because it is written inside quotes.

7. Integer vs String
a = [10, 20, 30]
b = ["10", "20", "30"]

a contains integers, while b contains strings.

10  → integer
"10" → string
🎯 Practice

Next, I will practice:

List slicing
insert()
extend()
pop()
del
Membership operators
Looping through lists
Nested lists
List comprehension
🚀 100 Days of Code

Day 3 — Python Lists ✅

Learn → Practice → Make mistakes → Fix them → Repeat.


