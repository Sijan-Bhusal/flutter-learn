import 'dart:io';

void main() {
  double weightinKG = 10.0;
  print('Enter the destination zone');
  String? destinationZone = stdin.readLineSync();

  //Conditions
  // if (destinationZone == 'PQR') {
  //   print('Shipping cost is: ${weightinKG * 10}');
  // } else if (destinationZone == 'ABC') {
  //   print('Shipping cost is: ${weightinKG * 5}');
  // } else if (destinationZone == 'XYZ') {
  //   print('Shipping cost is: ${weightinKG * 9}');
  // } else {
  //   print("Error!!");
  // return;
  // }

  //Switch Cases
  switch (destinationZone) {
    case 'PQR':
      print('Shipping cost is: ${weightinKG * 10}');
      break;
    case 'ABC':
      print('Shipping cost is: ${weightinKG * 5}');
      break;
    case 'XYZ':
      print('Shipping cost is: ${weightinKG * 20}');
      break;
    default:
      print('Error!!');
  }
}
