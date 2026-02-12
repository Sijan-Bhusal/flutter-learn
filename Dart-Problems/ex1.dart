void main() {
  const int birthYear = 2002;
  final daysInWeek = 7;
  final int age = DateTime.now().year - birthYear;
  print(age);
  print('I am approximately $age years old');
  print('''' Bio: I am a passionate person who loves to
    learn new things and share my knowledge with others.
   As there are lots of personas around me  ''');

  print(identical(birthYear, daysInWeek));
}
