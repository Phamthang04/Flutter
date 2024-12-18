bool isHappy(int n) {
  Set<int> seen = {}; // Tập hợp lưu các số đã gặp

  while (n != 1 && !seen.contains(n)) {
    seen.add(n);
    n = n.toString().split('').map((e) => int.parse(e)).fold(0, (sum, digit) => sum + digit * digit);
  }

  return n == 1;
}

void main() {
  print(isHappy(19)); 
  print(isHappy(2)); 
}
