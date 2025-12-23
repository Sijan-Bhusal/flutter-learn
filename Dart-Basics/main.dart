void main() {
  print(
    (4 + 4) ~/ 3,
  ); //~/ is integer (truncating) division in Dart. 8 ~/ 3 → 2 (int), prints 2.
  print(
    (4 + 4) / ~3,
  ); // here ~3 represents the bitwise NOT operator equivalent to -4. SO it prints -2.0
}
