list = ["Apple", "Mango", "Apple"]
print(list)

student_list = ["Anusha", 20, 8.5, True]
print(student_list)

fruits = ["Apple", "Mango", "Banana"]
fruits[1] = "orange"
print(fruits)

colors = ["red", "blue", "green"]
colors[1] = "yellow"
print(colors)

marks = [50, 60, 70, 80]
marks[2] = 90
print(marks)

fruits = ["Apple", "Mango", "Banana", "Orange"]
fruits[3] = ("Grapes")
print(fruits)

numbers = [10, 20, 30]
numbers.append(40)
print(numbers)

animals = ["Dog", "Cat"]
animals.append("lion")
print(animals)

subjects = ["Python", "SQL"]
subjects.append("HTML"), subjects.append("CSS")
print(subjects)


numbers = [10, 20, 40]
numbers.insert(2, 30)
print(numbers)

fruits = ["Apple","Banana", "Orange"]
fruits.insert(1, "Mango")
print(fruits)

subjects = ["Python", "HTML", "CSS"]
subjects.insert(1, "SQL")
print(subjects)

numbers = [8, 3, 1, 6, 4]
numbers.sort()
print(numbers)

numbers = [5, 2, 9, 1, 7]
numbers.sort(reverse=True)
print(numbers)

marks = [75, 42, 90, 63, 88]
numbers.sort(reverse=True)
print(numbers)

numbers = [10, 20, 30, 40]
numbers.clear()
print(numbers)

subjects = ["Python", "SQL", "HTML", "CSS"]
subjects.clear()
print(subjects)

fruits = ["Apple", "Mango", "Banana"]
fruits.clear()
print(fruits)

numbers = [10, 20, 30, 40, 50]
print(numbers[1:4])

numbers = [10, 20, 30, 40, 50]
print(numbers[:3])

numbers = [10, 20, 30, 40, 50]
print(numbers[2:])

numbers = [0, 1 , 2, 3, 4, 5, 6, 7]
print(numbers[::2])

numbers = [10, 20, 30, 40, 50, 60,70]
print(numbers[::2])

fruit = "Mango"
print(fruit)
print(fruit[0:4])
print(fruit[:4])
print(fruit[0:-3])

numbers = [10, 20, 30, 40, 50, 60]
print(numbers[::2])

numbers = [10, 20, 30, 40, 50, 60, 70]
print(numbers[::3])

numbers = [10, 20, 30, 40, 50, 60, 70]
print(numbers[1::2])

numbers = [10, 20, 30, 40, 50, 60, 70]
print(numbers[2:6])

numbers = [10, 20, 30, 40, 50, 60, 70, 80, 90]
print(numbers[1:8:2])

numbers = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50]
print(numbers[2:9:3])

numbers = [10, 20, 30, 40, 50]
print(len(numbers))

subjects = ["Python", "SQL", "HTML", "CSS", "Dart", "Java"]
print(len(subjects))

student = ["Anusha", 20, "CSE", 8.5, True]
print(len(student))

numbers = [8, 3, 5, 1, 6]
print(sorted(numbers))

marks = [75, 42, 90, 63, 88]
print(sorted(marks))

numbers = [20, 5, 15, 10, 25]
print(sorted(numbers, reverse=True))

numbers = [1, 2, 3, 4, 5]
print(sum(numbers))

numbers = [5, 10, 5, 20, 5, 30]
print(numbers.count(5))

fruits.count("Apple")

fruits = ["Apple", "Mango", "Apple", "Banana", "Apple"]
print(fruits.count("Apple"))

fruits = ["Apple", "Mango", "Banana", "Orange"]
print(fruits.index("Orange"))

subjects = ["Python", "SQL", "HTML", "CSS"]
print(subjects.index("HTML"))


numbers = [10, 20, 30, 40, 50]
numbers.reverse()
print(numbers)

fruits = ["Apple", "Mango", "Banana", "Orange"]
fruits.reverse()
print(fruits)

matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]
print(matrix[1])

matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]
print(matrix[2][1])

List = ["Anusha", "CSE", 22 , True, "Bti"]
print(List)

List = ["Anusha", "CSE", 22 , True, "Bti"]
print(List.append("CLG"))
print(List)

List = ["Anusha", "CSE", 22 , True, "Bti"]
List.insert( 2, "CLG")
print(List)

List = ["Anusha", "CSE", 22 , True, "Bti"]
List.remove(True)
print(List)

List = ["Anusha", "CSE", 22 , True, "Bti"]
print(List.append("CLG"))
List.insert( 2, "CLG")
List.remove(True)
print(List)


List = [ 10, 20, 45, 98, 56, 98, 76, 96]
List.sort(reverse=True)
print(List)

List = [ 10, 20, 45, 98, 56, 98, 76, 96]
List.reverse()
print(List)
