/* The program demonstrates the use of static class members in Dart. 
It defines a Constants class with static string variables (greeting and bye) and a constructor that prints a message. The main function accesses these static variables directly without instantiating the class, printing "Hello World" and "bye". The constructor is not called, showing that static members don't require object creation.

Pros of this approach:

Memory efficiency: Static variables are shared across the program and don't consume memory per instance.
Global access: Members can be accessed from anywhere without creating an object, useful for constants or utilities.
No instantiation overhead: Simplifies code for shared data, avoiding unnecessary object creation.

*/

void main() {
  print(Constants.greeting);
  print(Constants.bye);
  print(Constants.getValue());
}

// Static Classes
class Constants {
  Constants() {
    print('Constructor is called');
  }
  static String greeting = 'Hello World';
  static String bye = 'bye';

  static int getValue() {
    return 10;
  }
}
