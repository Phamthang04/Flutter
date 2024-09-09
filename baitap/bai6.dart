void main() {
  int n = 100; // Đặt giá trị n
  List<int> primeNumbers = List.generate(n + 1, (i) => i)
      .where((i) => i == 0 || i == 1 || (i > 1 && isPrime(i))).toList();

  print(primeNumbers);
}

bool isPrime(int num) {
  return num > 1 && List.generate(num - 2, (i) => i + 2).every((e) => num % e != 0);
}
