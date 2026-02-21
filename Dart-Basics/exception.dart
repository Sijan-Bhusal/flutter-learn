// Exception Handling
// void main() {
//   // Exception Example
//   print(10 ~/ 3);
//   // print(10 ~/ 0);
//   try {
//     print(10 ~/ 0);
//   } on Exception catch (e) {
//     print(e);
//   } catch (e) {
//     print('an error occured');
//   }
//   print('Sijan');
// }

// Future(promises)
// future is good, as if you want to fetch external apis and it doesnt fetches data. IT uses exception handling extensively. It is aynchronous programming.
void main() {
  print('Hello');
  print('Hey');
  print('Greetings'); //they are printed synchronously.
  print(usePromise());
}

Future<String> usePromise() {
  return Future(() {
    return ('Hello');
  });
}
