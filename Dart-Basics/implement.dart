void main() {
  final Vehicle car = Car();
  // final Vehicle truck = Truck();
  print(car.noOfWheels);
  // print(truck.noOfWheels);

  car.accelerate();
}

abstract class Vehicle {
  //Variables
  int noOfWheels = 0;

  //methods
  void accelerate();
}

class Car implements Vehicle {
  @override
  int noOfWheels = 4;
  void accelerate() => print('car is accelerating');
}

// class Truck implements Vehicle {
//   int noOfWheels = 8;
// }
