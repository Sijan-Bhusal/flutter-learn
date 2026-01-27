void main() {
  Animal anim = Human();
  switch (anim) {
    case Dog():
      print('Dog barks');
    case Cat():
      print('Cat meows');
    case Human():
      print('Human speaks');
  }
}

// abstract class Animal {}
// here the above function is not printing anything because the anim variable is of type Human and Human does not match with Dog case.

sealed class Animal {}
// using sealed class insteaf of abstract class so the type 'Animal' can check if the object is of type Dog, Cat, or Human  or not. If we had used abstract class then it would not have been possible to check the type of object at runtime.

class Human implements Animal {}

class Cat extends Animal {}

class Dog implements Animal {}
