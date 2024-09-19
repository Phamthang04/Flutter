void swapElements(List<dynamic> array, int index1, int index2) {
  if (index1 != index2 && index1 >= 0 && index2 >= 0 && index1 < array.length && index2 < array.length) {
    final temp = array[index1];
    array[index1] = array[index2];
    array[index2] = temp;
  }
}

void main() {
  var myArray = [1, 2, 3, 4, 5];
  print('Mảng trước khi hoán đổi: $myArray');

  swapElements(myArray, 1, 3);

  print('Mảng sau khi hoán đổi: $myArray');
}
