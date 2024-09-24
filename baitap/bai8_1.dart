void main() {
  List<int> inputs = [1, 2, 3, 4, 5, 6, 1, 1, 2];

  // Tính giá trị trung bình
  double average = inputs.isEmpty ? 0.0 : inputs.reduce((a, b) => a + b) / inputs.length;
  print('Giá trị trung bình: $average');

  int min = inputs.isEmpty ? 0 : inputs.reduce((a, b) => a < b ? a : b);
  int max = inputs.isEmpty ? 0 : inputs.reduce((a, b) => a > b ? a : b);
  print('GTNN: $min, GTLN: $max');

  // Đếm số lần xuất hiện
  Map<int, int> occurrences = {};
  inputs.forEach((n) => occurrences[n] = (occurrences[n] ?? 0) + 1);
  occurrences.forEach((k, v) => print('$k: $v lần'));

  // Đếm số lượng số chẵn và số lẻ
  int evenCount = inputs.where((n) => n % 2 == 0).length;
  print('Số chẵn: $evenCount số, Số lẻ: ${inputs.length - evenCount} số');
}
