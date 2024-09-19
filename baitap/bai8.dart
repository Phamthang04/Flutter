void printMultiplicationTable(int size) {
  // In bảng cửu chương theo chiều ngang
  print('Bảng cửu chương theo chiều ngang:');
  for (int i = 1; i <= size; i++) {
    print(List.generate(
        size, (j) => '${i} * ${j + 1} = ${i * (j + 1)}'.padLeft(12)).join(' '));
  }

  print('\nBảng cửu chương theo chiều dọc:');
  // In tiêu đề cột
  print(''.padLeft(12) +
      List.generate(size, (i) => '${i + 1}'.padLeft(12)).join(' '));

  // In bảng cửu chương
  for (int i = 1; i <= size; i++) {
    print('${i}'.padLeft(12) +
        List.generate(
                size, (j) => '${i} * ${j + 1} = ${i * (j + 1)}'.padLeft(12))
            .join(' '));
  }
}

void main() {
  const int size = 9;
  printMultiplicationTable(size);
}
