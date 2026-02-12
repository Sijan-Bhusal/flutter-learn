void main() {
  //Enums
  final employee1 = Employee('Sijan', EmployeeType.swe);
  final employee2 = Employee('Rajan', EmployeeType.finance);
  employee2.fn();
  print(employee1.type);
  print(employee1.type.runtimeType);
}

enum EmployeeType {
  swe(200000),
  finance(300000),
  marketing(400000);

  final int Salary;
  const EmployeeType(this.Salary);
}

class Employee {
  final String name;
  final EmployeeType type;

  Employee(this.name, this.type);

  void fn() {
    print('${type.name} salary is ${type.Salary}');
  }
}
