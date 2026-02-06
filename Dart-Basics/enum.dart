void main() {
  //Enums
  final employee1 = Employee('Sijan', EmployeeType.swe);
  final employee2 = Employee('Rajan', EmployeeType.finance);
  employee2.fn();
  print(employee1.type;
}

enum EmployeeType { swe, finance, marketing }

class Employee {
  final String name;
  final EmployeeType type;

  Employee(this.name, this.type);

  void fn() {
    print(type.name);
  }
}
