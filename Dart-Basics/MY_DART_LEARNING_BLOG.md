# My Dart Learning Journey 🚀

Hey there! So I've been diving into Dart for Flutter development and thought I'd share what I've picked up along the way. It's been a fun ride from basic data types to actually understanding how nullability works. Let me walk you through it!

---

## The Basics: Data Types & Variables (Day 1-2)

When I first started, I was like "okay, variables... I got this." But Dart threw me a curveball with `const` vs `final`.

```dart
// FLutter DataTypes
void main() {
  //int
  // const, final,
  //var

  int x = 10, y = 20;
  double z = 30.0;
  print(x + y + z); // Output: 60.0
}
```

Pretty straightforward, right? But here's the thing:

- **`const`** = compile-time constant (set before the program even runs)
- **`final`** = runtime constant (assigned once but can change during execution)
- **`var`** = let Dart figure out the type (lazy programmer's best friend)

---

## Playing with Input & Type Conversion

Next, I wanted to actually _do_ something with numbers. So I built a simple calculator that takes user input:

```dart
import 'dart:io';

void main() {
  double x1;
  double x2;
  int x3;

  print("Enter first number:");
  x1 = double.parse(stdin.readLineSync()!);
  print("Enter second number:");
  x2 = double.parse(stdin.readLineSync()!);
  print("Sum is: ${x1 + x2}");
  x3 = int.parse(stdin.readLineSync()!);
  print(x3);
}
```

## Strings Are More Fun Than They Look (Day 3)

This is where I realized Dart has some solid string features. String interpolation became my new best friend:

```dart
void strings() {
  String name = 'sijan';

  // Concatenation with interpolation
  var firstName = 'sijan';
  var lastName = 'bhusal';
  print('$firstName $lastName and age is ${30}');
  // Output: sijan bhusal and age is 30

  // MultiLine String
  var MultiLine = '''
  Hello!
  My name is:
  Sijan Bhusal ''';
  print(MultiLine);
}
```

And I actually built something useful - a real-world Instagram profile example:

```dart
const minutesConst = 60;

void insta() {
  var userName = 'sijan';
  var followCount = 10;
  var followingCount = 20;
  var watchHour = 40.5;
  var minutes = watchHour - watchHour.toInt();
  minutes = minutes * minutesConst;
  var bio = 'I am a fullstack developer\n and I am currently learning dart';

  print(
    ' My username is ${userName}.\n I have total ${followCount} followers.\n I am following ${followingCount} peoples.\n This is my bio: ${bio}.\n I have consumed total ${watchHour.toInt()} hours and ${minutes} minutes watching videos.',
  );
}
```

Pretty cool, right? This actually taught me a lot about type conversion too. Converting `double` to `int`? Easy peasy.

---

## Boolean Logic & Operator Precedence

Then came the boolean operations, and honestly, this confused me at first:

```dart
void boolCheck() {
  bool b = (false || true) && false; // Result: false
  bool a = (false || true);           // Result: true
  print('${a} ${b}'); // Output: true false
}
```

The key thing I learned here is **operator precedence**. Parentheses are your friend! They make sure your logic evaluates the way you want it to.

---

## Control Flow: If-Else & Switch Cases

Okay, so now I needed to control what my program does based on conditions. I built a shipping cost calculator:

```dart
import 'dart:io';

void main() {
  double weightinKG = 10.0;
  print('Enter the destination zone');
  String? destinationZone = stdin.readLineSync();

  // Old way with if-else
  // if (destinationZone == 'PQR') {
  //   print('Shipping cost is: ${weightinKG * 10}');
  // } else if (destinationZone == 'ABC') {
  //   print('Shipping cost is: ${weightinKG * 5}');
  // }

  // Better way with switch-case
  switch (destinationZone) {
    case 'PQR':
      print('Shipping cost is: ${weightinKG * 10}');
      break;
    case 'ABC':
      print('Shipping cost is: ${weightinKG * 5}');
      break;
    case 'XYZ':
      print('Shipping cost is: ${weightinKG * 20}');
      break;
    default:
      print('Error!!');
  }
}
```

Switch cases are cleaner when you have multiple options. Trust me on this one.

---

## Loops: Iterating Like a Pro

Then came loops. I wanted to iterate through strings character by character:

```dart
void main() {
  String value = 'Hell';
  for (int i = 0; i <= value.length; i++) {
    print(value[i]);
  }
  // Output:
  // H
  // e
  // l
  // l
}
```

Simple but powerful. Loops are everywhere in programming.

---

## Classes & Objects (Day X)

Alright, this is where things got more OOP-ish. I created my first class:

```dart
class Person {
  final String name;

  Person(this.name); // Constructor shorthand

  void printName() {
    print(name);
  }
}

void main() {
  final obj = Person('Sijan');
  obj.printName(); // Output: Sijan
}
```

That `this.name` in the constructor? Mind. Blown. That's Dart being smart and assigning the parameter directly to the property. Love it.

---

## Functions & Nullable Types (Day 4-5)

Here's where things got interesting. I learned about nullable types:

```dart
void printName(String? name) {
  print(name);
}

void main() {
  String name = 'SIjan';
  printName(name);
}
```

That `?` after `String` means "hey, this could be null." Dart is pretty strict about this, which is actually awesome for preventing bugs.

---

## The Null Coalescing Operators (Day 5)

And then came my favorite new operators - `??` and `??=`:

```dart
// Non-null coalescing operator (??)
void notNull(String? firstName, String? middleName, String? lastName) {
  final firstNullValue = firstName ?? middleName ?? lastName;
  print(firstNullValue);
  // Returns the first non-null value!
}

// Null-aware assignment operator (??=)
void nullAware(String? firstName, String? lastName) {
  String? name = firstName;
  name ??= lastName; // Assign lastName only if name is null
  print(name);
}

void main() {
  notNull(null, 'Sijan', null);      // Output: Sijan
  nullAware("Sijan", null);          // Output: Sijan
}
```

This is SO useful. Instead of writing a ton of if-statements to check for null values, these operators make the code so much cleaner.

---

## What I've Learned So Far

- **Variables matter** - knowing when to use `const`, `final`, and `var` makes a difference
- **Type safety is your friend** - Dart's strict typing prevents a lot of bugs
- **String interpolation** - makes working with strings so much easier than concatenation
- **Control flow** - switch cases beat if-else when you have many conditions
- **Nullability** - understanding null and how to handle it is crucial
- **Classes & OOP** - Dart makes it easy to organize code with classes and objects
- **The `??` operator** - seriously, this is a lifesaver for null handling

---

## What's Next?

I'm ready to dive deeper into more advanced Dart features like:

- Collections (Lists, Maps, Sets)
- Async/Await
- Futures & Streams
- Building actual Flutter apps! 🎯

---

## Final Thoughts

Dart is actually pretty cool. I came in expecting something super complex, but the syntax is intuitive and the tooling is solid. The more I learn, the more excited I am to build something real with Flutter.

If you're just starting with Dart too, stick with it! It gets better once you understand the core concepts.

Happy coding! 👨‍💻

---

_Last Updated: January 23, 2026_
