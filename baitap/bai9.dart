List<List<int>> findTopThree(List<int> numbers) {
  if (numbers.length < 3) {
    throw Exception('Mảng cần có ít nhất 3 phần tử.');
  }

  numbers.sort();

  // Lấy 3 giá trị nhỏ nhất và 3 giá trị lớn nhất
  return [
    numbers.sublist(0, 3), // GTNN
    numbers.sublist(numbers.length - 3) // GTLN
  ];
}

void main() {
  List<int> inputs = [10, 7, 8, 9, 4, 6, 2, 3, 1, 5];
  var result = findTopThree(inputs);

  print('GTNN top 1: ${result[0][0]}, GTNN top 2: ${result[0][1]}, GTNN top 3: ${result[0][2]}');
  print('GTLN top 1: ${result[1][2]}, GTLN top 2: ${result[1][1]}, GTLN top 3: ${result[1][0]}');
}
