void main() {
  // Animal animal = Animal();

  //Polymorphism
  //Here the cat and dog objects are treated as Animal type.
  Animal cat = Cat();
  cat.sound();
  cat = Dog();
  cat.sound();

  // Abstraction -> hiding implementation details and exposing only what's necessary through a common interfachiding the internal details of a class
  Animal animal = Cat();
  animal.sound();
  Animal animal2 = Dog();
  animal2.sound();

  // Here the anim object in the Animal class is more diverse.
  // You can't directly instantiate animal obj like(Animal animal = Animal())
  // By creating animal abstract class, it ensures all its subclass implement their own methods.

  // Encapsulation -> restricting direct access to some of an object's components and can be achieved using private variables and public methods.
  _Person person =
      _Person(); // if we create private class like _Person, we need to use _Person to create object.
  print(person._getName());

  // Mixins -> a way to reuse a class's code in multiple class hierarchies.
  Athelete athelete = Athelete();
  athelete.jump();

  // Object as a mixin
  Object athelete2 =
      5; // Here object is used as base class for all the classes in dart. But it can't be used for nullable types.
  // Object athelete3 = null;
  print(athelete2);
}

//Abstract Class
abstract class Animal {
  // Method
  void sound() {
    print('Animal making sound!!');
  }
}

// Inheritance
class Cat extends Animal {
  @override
  void sound() {
    print('cat makes sound');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('dog makes sound');
  }
}

//Encapsulation
class _Person {
  String _name = 'Sijan';

  //Methods
  String _getName() {
    return _name;
  }
}

mixin jumpable {
  // variables
  int height = 10;
}

mixin runnable {
  void run() {
    print('Running');
  }
}

class Athelete with jumpable, runnable {
  // we couldnt use extends keyword here because dart only supports single inheritance.
  void jump() {
    print(
      'Jumping height of $height',
    ); // Accessing height from mixin . It is quite similar to extends keyword.
  }

  void runFast() {
    run(); // Accessing run method from runnable mixin.
  }
}

// mixin is used to access properties and methods from another class without using inheritance.
