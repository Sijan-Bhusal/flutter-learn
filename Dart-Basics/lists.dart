void main() {
  List<Student> students = [
    //here using <Student> helps in type safety, accidentally preventing from adding wrong types
    //Example: Student('Hello') //it doesnt fullfill all the requirements of the object.
    Student('Sijan', 20),
    Student('Aasis', 40),
    Student('Alisha', 10),
  ];
  // print(students);

  // students.removeAt(1); // remove student at index 1
  // Listing students with marks less than 30
  // List<Student> filteredStudent = [];
  //Traditional Approach
  // for (int i = 0; i < students.length; i++) {
  //   if (students[i].marks < 30) {
  //     filteredStudent.add(students[i]);
  //   }
  // }

  // Modern Approach
  // for (final student in students) {
  //   if (student.marks < 30) {
  //     filteredStudent.add(student);
  //   }
  // }

  // SQL way
  final filteredStudent = students.where((student) => student.marks >= 30);
  print(filteredStudent.toList());
}

// List and sets are quite similar except that sets automatically remove duplicate objects
class Student {
  final String name;
  final int marks;
  Student(this.name, this.marks);

  @override
  String toString() => '$name scored $marks';
}
