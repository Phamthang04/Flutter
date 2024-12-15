// List<List<int>> addMatrices(List<List<int>> matrixA, List<List<int>> matrixB) {
//   // Kiểm tra nếu kích thước hai ma trận không bằng nhau
//   if (matrixA.length != matrixB.length ||
//       matrixA[0].length != matrixB[0].length) {
//     throw ArgumentError("Hai ma trận phải cùng kích thước.");
//   }

//   // Tính tổng hai ma trận sử dụng map
//   return List.generate(matrixA.length, (i) =>
//       List.generate(matrixA[i].length, (j) => matrixA[i][j] + matrixB[i][j]));
// }

// void main() {
//   // Ví dụ sử dụng
//   List<List<int>> matrixA = [
//     [1, 2, 3],
//     [4, 5, 6]
//   ];
//   List<List<int>> matrixB = [
//     [7, 8, 9],
//     [10, 11, 12]
//   ];

//   try {
//     List<List<int>> result = addMatrices(matrixA, matrixB);
//     print("Tổng hai ma trận là:");
//     for (var row in result) {
//       print(row);
//     }
//   } catch (e) {
//     print(e);
//   }
// }





//bai2
// List<int>? findDiagonalIntersection(List<List<int>> matrix) {
//   int n = matrix.length;

//   // Kiểm tra ma trận vuông
//   if (matrix.any((row) => row.length != n)) {
//     throw ArgumentError("Ma trận phải là ma trận vuông (N x N).");
//   }

//   // Tìm phần tử giao bởi hai đường chéo chính
//   if (n % 2 == 1) {
//     int mid = n ~/ 2; // Chỉ số trung tâm
//     return [matrix[mid][mid]]; // Phần tử giao
//   } else {
//     return null; // Không có giao điểm nếu ma trận không có phần tử chính giữa
//   }
// }

// void main() {
//   // Ví dụ sử dụng
//   List<List<int>> matrix1 = [
//     [1, 2, 3],
//     [4, 5, 6],
//     [7, 8, 9]
//   ];

//   List<List<int>> matrix2 = [
//     [1, 2],
//     [3, 4]
//   ];

//   try {
//     // Trường hợp ma trận lẻ
//     var result1 = findDiagonalIntersection(matrix1);
//     print("Giao điểm của ma trận lẻ: $result1");

//     // Trường hợp ma trận chẵn
//     var result2 = findDiagonalIntersection(matrix2);
//     print("Giao điểm của ma trận chẵn: $result2");
//   } catch (e) {
//     print(e);
//   }
// }




//bai3
// enum FoodType { diet, fat, vegan }
// enum Origin { Asian, Europe, Africa }

// class Food {
//   final int id;
//   final String name;
//   final FoodType type;
//   final double price;

//   Food({
//     required this.id,
//     required this.name,
//     required this.type,
//     required this.price,
//   });
// }

// class Supplier {
//   final int id;
//   final String name;
//   final Origin origin;
//   final List<Food> foods;

//   Supplier({
//     required this.id,
//     required this.name,
//     required this.origin,
//     required this.foods,
//   });

//   // Phương thức trả về danh sách đồ ăn của từng nguồn gốc
//   static Map<Origin, List<Food>> getFoodsByOrigin(List<Supplier> suppliers) {
//     Map<Origin, List<Food>> foodsByOrigin = {
//       Origin.Asian: [],
//       Origin.Europe: [],
//       Origin.Africa: []
//     };

//     for (var supplier in suppliers) {
//       foodsByOrigin[supplier.origin]?.addAll(supplier.foods);
//     }

//     return foodsByOrigin;
//   }

//   // Phương thức tính tổng tiền đồ ăn chay của từng nhà cung cấp
//   double calculateTotalVeganFoodPrice() {
//     return foods
//         .where((food) => food.type == FoodType.vegan)
//         .fold(0.0, (total, food) => total + food.price);
//   }
// }

// void main() {
//   // Tạo dữ liệu mẫu
//   List<Supplier> suppliers = [
//     Supplier(
//       id: 1,
//       name: "Supplier A",
//       origin: Origin.Asian,
//       foods: [
//         Food(id: 1, name: "Tofu", type: FoodType.vegan, price: 2.5),
//         Food(id: 2, name: "Chicken", type: FoodType.fat, price: 5.0),
//       ],
//     ),
//     Supplier(
//       id: 2,
//       name: "Supplier B",
//       origin: Origin.Europe,
//       foods: [
//         Food(id: 3, name: "Salad", type: FoodType.vegan, price: 3.0),
//         Food(id: 4, name: "Steak", type: FoodType.fat, price: 10.0),
//       ],
//     ),
//     Supplier(
//       id: 3,
//       name: "Supplier C",
//       origin: Origin.Africa,
//       foods: [
//         Food(id: 5, name: "Couscous", type: FoodType.vegan, price: 4.0),
//         Food(id: 6, name: "Lamb", type: FoodType.fat, price: 8.0),
//       ],
//     ),
//   ];


//   var foodsByOrigin = Supplier.getFoodsByOrigin(suppliers);
//   foodsByOrigin.forEach((origin, foods) {
//     print("\n$origin:");
//     for (var food in foods) {
//       print("- ${food.name} (\$${food.price})");
//     }
//   });


//   for (var supplier in suppliers) {
//     double totalVeganPrice = supplier.calculateTotalVeganFoodPrice();
//     print("\nTổng tiền đồ ăn chay của ${supplier.name}: \$${totalVeganPrice}");
//   }
// }



//bai4
String catchTheMouse(int a, int b, int c) {
  // Tính khoảng cách từ mèo A và mèo B tới chuột
  int distanceA = (b - a).abs();
  int distanceB = (b - c).abs();

  if (distanceA < distanceB) {
    return "CAT_A";
  } else if (distanceB < distanceA) {
    return "CAT_B";
  } else {
    return "The mouse has escaped";
  }
}

void main() {
  // Ví dụ sử dụng
  print(catchTheMouse(1, 3, 2)); // Output: CAT_B
  print(catchTheMouse(1, 3, 5)); // Output: CAT_A
  print(catchTheMouse(1, 3, 3)); // Output: The mouse has escaped
}
