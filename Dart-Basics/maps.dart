void main() {
  // final list = [10, 15, 20];

  Map<String, int> userB = {'Hello': 10, 'Sijan': 20, 'Bye': 30};

  // Iterating over the maps
  // for (int i = 0; i < marks.length; i++) {
  //   print(marks.keys.toList()[i]);
  // }

  // //Getting key value pair
  // marks.forEach((key, val) {
  //   print('$key : $val');
  // });

  List<Map<String, int>> marks = [
    {'Math': 20, 'Science': 30, 'Eco': 50},
    {'Math': 20, 'Science': 30, 'Eco': 50},
    userB,
  ];

  // Traditional Way
  // marks.forEach((map) {
  //   print(map);
  // });

  marks.map((e) {
    e.forEach((key, val) {
      print('$key: $val'); // works for retrieving data
    });
  }).toList();
}

class Student {
  final String name;
  final int marks;

  Student(this.name, this.marks);
}
