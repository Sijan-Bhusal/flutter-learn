void typeChar() {
  final name =
      "Sijan"; // final — assigned once at runtime.    const- compile time constatnt
  // name = "Ram";                        // can't be assigned again
  print(name);
  final time = DateTime.now();
  print(time);
  // Use camelcase style for assigning a variable
  int age = 20;
  var age2 = age.toDouble(); // you can't write (age as double) because
  print(age2);
}

// Strings

void strings() {
  String name = 'sijan';
  print(name.codeUnits);

  //concatenation
  var firstName = 'sijan';
  var lastName = 'bhusal';
  print('$firstName $lastName and age is ${30}');

  //MultiLine String
  var MultiLine = '''
  Hello!
  My name is:
  Sijan Bhusal ''';
  print(MultiLine);
}

//Real World Example: Create a username
const minutesConst = 60;

void insta() {
  var userName = 'sijan';
  var followCount = 10;
  var followingCount = 20;
  var watchHour = 40.5;
  var minutes = watchHour - watchHour.toInt();
  minutes = minutes * minutesConst;
  var bio = 'I am a fullstack developer\n and I amd currently learning dart';
  print(
    ' My username is ${userName}.\n I have total ${followCount} followers.\n I am following ${followingCount} peoples.\n This is my bio: ${bio}.\n I have consumed total ${watchHour.toInt()} hours  and ${minutes} minutes watching videos.',
  );
}

void boolCheck() {
  bool b =
      (false || true) &&
      false; //prescedence in the operator as the parenthesis has higher prescedence.
  bool a = (false || true);
  print('${a} ${b}');
}

void conditions() {
  int likes; //here difference between writing int and var is: int has clear datatype while var datatype depends on the type of value.
  // Use int for clarity; use var for complex types where inference is obvious (e.g., var result = someFunction();)
print("Enter the number")
  if (likes>30){

  }

}

void main() {
  // typeChar();
  // insta();
  // boolCheck();
  conditions();
}

/*
  Achievements and Learnings (Day 3):
  - Learned about variables in Dart: `final` for runtime constants and `const` for compile-time constants.
  - Understood the difference between explicit type declaration (e.g., `int`) and type inference with `var`.
  - Practiced type conversion, for example from `int` to `double`.
  - Explored String manipulation:
    - String interpolation for embedding variables and expressions.
    - Creating multi-line strings.
  - Worked with boolean logic, understanding operator precedence with `&&`, `||`, and parentheses.
  - Set up a basic conditional structure with an `if` statement.
  - Reinforced the use of functions to organize code.
*/