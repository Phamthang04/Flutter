// // // // void main() {
// // // //   // Khai báo kiểu dữ liệu
// // // //   int nonNullableInt = 10; 
// // // //   int? nullableInt;
// // // //   double nonNullableDouble = 10.5;
// // // //   double? nullableDouble;
// // // //   String name = "Dart";
// // // //   dynamic dynamicVar = "Hello"; 
// // // //   var inferredVar = 42; 

// // // //   // In ra các giá trị
// // // //   print("$nonNullableInt, $nullableInt, $nonNullableDouble, $name, $dynamicVar, $inferredVar");
// // // // }
// // // // Hàm main tiếp tục
// // // void main() {
// // //   // ... (phần khai báo kiểu dữ liệu)

// // //   staticMethod();
// // //   final String finalString = "Bạn ăn cơm chưa?";
// // //   late String lateString;
// // //   lateString = "Bạn ăn cơm chưa vậy?";
// // //   const int constInt = 100;

// // //   print(finalString);
// // //   print(lateString);
// // //   print(constInt);
// // // }

// // // // Phương thức tĩnh (static method)
// // // void staticMethod() {
// // //   print("Đây là một phương thức tĩnh.");
// // // }
// // // Hàm main tiếp tục
// // void main() {


// //   // Tính giai thừa của 9
// //   int factorialResult = factorial(9);
// //   print("Giai thừa của 9 là: $factorialResult");
// // }

// // // Hàm tính giai thừa
// // int factorial(int n) {
// //   if (n < 0) {
// //     throw ArgumentError("N không thể là số âm");
// //   }
// //   if (n <= 1) return 1;
// //   return n * factorial(n - 1);
// // }



// void main() {
//   // ... (phần khai báo kiểu dữ liệu, từ khóa, và giai thừa)

//   // Hàm chuyển đổi giữa String, int, double
//   String intToString(int input) => input.toString();
//   int stringToInt(String input) => int.parse(input);
//   double stringToDouble(String input) => double.parse(input);
//   String doubleToString(double input) => input.toString();

//   // Ví dụ sử dụng các hàm chuyển đổi
//   String strFromInt = intToString(123);
//   int intFromString = stringToInt("456");
//   double doubleFromString = stringToDouble("789");
//   String strFromDouble = doubleToString(8910);

//   print("String từ int: $strFromInt");
//   print("Int từ String: $intFromString");
//   print("Double từ String: $doubleFromString");
//   print("String từ double: $strFromDouble");
// }