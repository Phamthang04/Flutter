// // void main(List<String> args) {
// //   double a = 10;
// //   double b = -10.0;

// //   int c = 10;
// //   int d = -10;
  
// //   int _resultInt = (a + b + c +d).toInt();
// //   double _resultDouble = (a + b + c +d);

// //  print("_resultInt -> $_resultInt");
// //  print("_resultDouble -> $_resultDouble");
// // String _aStr = a.toString();
// // String _bStr = b. toString();
// // print("int a toString: $_aStr");
// // print("double b toString:$_bStr");

// // }
// void main(List<String> args) {
//   bool a = true;
//   bool b = false;
  

// }
// void main(List<String> args) {
//   Map map = {"key": "value"};
//   Map<String, String> map1 = Map<String, String>();
//   map1["key"] = "value";


// }
void main() {
  final phones = <String>['Nokia', 'Xiaomi', 'iPhone'];

  print(phones);
  print('${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');

  // Hoán đổi vị trí Xiaomi và iPhone
  String temp = phones[1];
  phones[1] = phones[2];
  phones[2] = temp;

  print(phones);
  print('${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');
}