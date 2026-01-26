class Cookie {
  // Public Variables
  final String shape;
  final double size;

  //Positional Constructor
  Cookie(this.shape, this.size) {
    baking();
  }

  // Named Constructor
  // Cookie.named({required this.shape, required this.size}) {
  //   print(isCooking());
  // }

  //Private Variables
  int _height = 3;
  int _width = 4;

  //Getter
  int get height => _height;
  int get width => _width;
  set setHeight(int h) {
    _height = h;
  }

  set setWidth(int w) {
    _width = w;
  }

  // Methods
  void baking() {
    print('Baking has been started');
  }

  bool isCooking() {
    return false;
  }
}

void main() {
  //using positional
  Cookie cookie1 = Cookie('round', 5.0);

  print('Positional: Shape: ${cookie1.shape}, Size: ${cookie1.size}');
  cookie1.setHeight = 10;
  print(cookie1.height);
  // using named
  // Cookie cookie2 = Cookie.named(shape: 'square', size: 10.0);
  // print('Named: Shape: ${cookie2.shape}, Size: ${cookie2.size}');
}
