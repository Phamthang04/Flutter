void main() {
  // Tạo mảng số tự nhiên từ 0 đến 100
  var numbers = List.generate(101, (index) => index);

  // Liệt kê số lẻ, số chẵn và kiểm tra 0
  var oddNumbers = numbers.where((number) => number % 2 != 0).toList();
  var evenNumbers = numbers.where((number) => number % 2 == 0).toList();
  var zeroType = (0 % 2 == 0) ? 'số chẵn' : 'số lẻ';

  print("Các số lẻ: $oddNumbers");
  print("Các số chẵn: $evenNumbers");
  print("0 là $zeroType");
}
