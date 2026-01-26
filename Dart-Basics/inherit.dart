void main() {
  Vehicle car = Car();
  print(
    (car as Car).noOfWheels,
  ); //inherit the noofwheels from car function even when using the parent vehicle
  car.accelerate();
  car.drive();
  print(car.speed);
}

class Vehicle {
  int speed = 10;
  bool isEngineWorking = false;
  //Method
  void accelerate() => speed += 10;
  void move() => print('Moving');
}

// class Engine {      // this is not printed
//   void start() => print('Engine started');
// }

// Using mixins for multiple inheritance-like behavior
mixin EngineMixin {
  void start() => print('Engine started');
}

class Car extends Vehicle with EngineMixin {
  int noOfWheels = 4;

  @override
  void accelerate() {
    speed += 20;

    print('Car is accelerating');
  }

  void printCar() {
    print(noOfWheels);
    print(speed);
  }

  void drive() {
    move(); // From Vehicle
    start(); // From EngineMixin
    print('Driving');
  }
}
