int numWaterBottles(int numBottles, int numExchange) {
  int totalDrunk = numBottles; // Tổng số chai đã uống
  int emptyBottles = numBottles; // Số chai trống ban đầu

  while (emptyBottles >= numExchange) {
    int newBottles = emptyBottles ~/ numExchange; // Số chai nước mới được đổi
    totalDrunk += newBottles; // Cộng vào tổng số chai uống được
    emptyBottles = newBottles + (emptyBottles % numExchange); // Cập nhật số chai trống
  }

  return totalDrunk;
}

void main() {
  print(numWaterBottles(9, 3)); 
  print(numWaterBottles(15, 4)); 
  print(numWaterBottles(5, 5)); 
}
