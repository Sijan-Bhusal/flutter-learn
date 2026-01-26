void main() {
  // runtime final (not a compile-time constant)
  final now = DateTime.now();
  print('now: $now');

  // compile-time const using const constructor (converted from final fields)
  const cookie = Cookie('Sijan', 10);
  print(cookie.shape);
  print(cookie.length);

  // const collection vs final collection
  const a = [1, 2, 3];
  const b = [1, 2, 3];
  final x = [1, 2, 3];
  final y = [1, 2, 3];

  print(identical(a, b)); // true - canonicalized at compile time
  print(identical(x, y)); // false - runtime lists
}

class Cookie {
  // final fields (immutable after construction)
  final String shape;
  final double length;

  // const constructor allows creating compile-time constants
  const Cookie(this.shape, this.length);

  void baking() {
    print('Baking has been started');
  }

  bool isCooking() {
    return false;
  }
}
