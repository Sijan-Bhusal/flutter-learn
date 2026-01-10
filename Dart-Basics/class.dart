class Hello {
  String name = 'name';
}

class Person {
  // void run(){
  // print("running");
  // }

  final String name;
  Person(this.name);

  void printName() {
    print(name);
  }
}

void main() {
  final obj = Person('Sijan');
  obj.printName();
}
