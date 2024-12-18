bool isUgly(int n) {
  if (n <= 0) return false;

  // Chia liên tục cho 2, 3, 5
  while (n % 2 == 0) n ~/= 2;
  while (n % 3 == 0) n ~/= 3;
  while (n % 5 == 0) n ~/= 5;

  // Nếu sau khi chia hết còn lại 1, thì n là số "xấu"
  return n == 1;
}

void main() {
  print(isUgly(6));   
  print(isUgly(1));   
  print(isUgly(14)); 
}
