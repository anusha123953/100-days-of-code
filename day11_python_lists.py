# 100 Days of Code - Day 11
# Python Lists Practice

# Creating a list
fruits = ["apple", "banana", "mango", "orange"]

print("Fruits:", fruits)

# Accessing elements using positive indexing
print("First fruit:", fruits[0])
print("Second fruit:", fruits[1])

# Negative indexing
print("Last fruit:", fruits[-1])
print("Second last fruit:", fruits[-2])

# Adding an element
fruits.append("grapes")
print("After append:", fruits)

# Removing an element
fruits.remove("banana")
print("After remove:", fruits)

# List slicing
print("First three fruits:", fruits[0:3])
print("From second fruit:", fruits[1:])

# Mixed data types
mixed_list = ["Anusha", 20, 6.62, True]

print("Mixed list:", mixed_list)
