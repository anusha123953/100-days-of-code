+# 🐍 Python Learning – Lecture 4

## 📚 Topics Learned

### 1. None & NoneType

Learned about `None` and the `NoneType` data type.

```python
x = None
print(type(x))
```

Output:

```text
<class 'NoneType'>
```

---

### 2. Assignment Operators

Practiced assignment operators:

* `+=` → Add and assign
* `-=` → Subtract and assign
* `*=` → Multiply and assign
* `/=` → Divide and assign
* `%=` → Modulus and assign

Example:

```python
x = 10
x += 10
print(x)
```

Output:

```text
20
```

---

### 3. Logical Operators

Learned the three logical operators:

* `and` → Both conditions must be `True`
* `or` → At least one condition must be `True`
* `not` → Reverses the Boolean result

#### AND

```text
True  and True  → True
True  and False → False
False and True  → False
False and False → False
```

**AND = Both must be true.**

#### OR

```text
True  or True  → True
True  or False → True
False or True  → True
False or False → False
```

**OR = At least one must be true.**

#### NOT

```text
not True  → False
not False → True
```

**NOT = Reverse the result.**

---

### 4. Membership Operators

Learned:

* `in` → Checks whether a value exists in a sequence
* `not in` → Checks whether a value does not exist in a sequence

Example:

```python
fruit = "banana"

print("a" in fruit)
```

Output:

```text
True
```

Membership operators search for the specified string/character within the sequence.

---

### 5. Bitwise Operators

Learned the basic bitwise operators:

* `&` → Bitwise AND
* `|` → Bitwise OR
* `^` → Bitwise XOR
* `~` → Bitwise NOT
* `<<` → Left shift
* `>>` → Right shift

Example:

```python
a = 5
b = 3

print(a & b)
print(a | b)
print(a ^ b)
print(~a)
print(a << 1)
print(a >> 1)
```

Output:

```text
1
7
6
-6
10
2
```

---

## 📝 Homework Completed

### 1. Logical Operator Practice

```python
a = int(input("Enter a number: "))
b = int(input("Enter another number: "))

print(a > 10 and b > 10)
print(a < 5 or b < 5)
print(not (a > b))
```

### 2. Comparison Operator Challenge

```python
age = int(input("Enter your age: "))

if age >= 18:
    print("You are an adult")
elif age < 18:
    print("You are a minor")
```

### 3. Membership Operator Exercise

```python
s = input("Enter a string: ")

print("a" in s)
print("Python" not in s)
```

### 4. Bitwise Operator Task

```python
a = 10
b = 20

print(a & b)
print(a | b)
print(a ^ b)
print(a << 2)
print(b >> 1)
```

---

## ✅ Lecture 4 Status

* [x] None & NoneType
* [x] Assignment Operators
* [x] Logical Operators
* [x] Truth Tables
* [x] Membership Operators
* [x] Bitwise Operators
* [x] Logical Operator Practice
* [x] Comparison Operator Challenge
* [x] Membership Operator Exercise
* [x] Bitwise Operator Task

## 🚀 Learning Progress

**Lecture 4 completed successfully!**

Learning → Practicing → Making mistakes → Correcting them → Improving every day. 🐍💻🔥


# 🌐 Web Development – Lecture 4

## 📚 Topics Learned

### 1. Semantic HTML

Learned about **semantic HTML elements** — HTML tags that clearly describe the meaning and purpose of the content.

Common semantic elements:

* `<header>` → Header section of a webpage
* `<nav>` → Navigation links
* `<main>` → Main content
* `<section>` → A section of content
* `<article>` → Independent content
* `<aside>` → Side content
* `<footer>` → Footer section

### 2. HTML Forms

Learned how HTML forms are used to **collect information from users**.

Basic form:

```html
<form>
    ...
</form>
```

### 3. HTML Input

Learned about different input types used inside forms:

```html
<input type="text">
<input type="email">
<input type="password">
<input type="number">
<input type="date">
<input type="radio">
<input type="checkbox">
<input type="submit">
```

Also learned about `<label>` and how it connects to an input using `for` and `id`.

Example:

```html
<label for="name">Name:</label>
<input type="text" id="name" name="name">
```

### 4. HTML Tables

Learned how to display information in **rows and columns** using HTML tables.

Important tags:

* `<table>` → Creates the table
* `<tr>` → Creates a table row
* `<th>` → Creates a table heading
* `<td>` → Creates a table data cell
* `colspan` → Combines columns
* `rowspan` → Combines rows

Example:

```html
<table>
    <tr>
        <th>Name</th>
        <th>Age</th>
    </tr>

    <tr>
        <td>Anusha</td>
        <td>20</td>
    </tr>
</table>
```

## 📝 Practice Completed

* [x] Semantic HTML
* [x] HTML Forms
* [x] HTML Input Types
* [x] HTML Labels
* [x] HTML Tables
* [x] Table Rows and Cells
* [x] `colspan` and `rowspan`

## 🚀 Learning Progress

Learning the fundamentals of HTML and understanding how these concepts can be applied later while building real-world projects.

**Learn → Practice → Build → Apply** 🌐💻🔥



