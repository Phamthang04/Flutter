int findMaxConsecutiveOnes(List<int> nums) {
  int maxCount = 0; 
  int count = 0;    

  for (int num in nums) {
    if (num == 1) {
      count++; 
      maxCount = count > maxCount ? count : maxCount; 
    } else {
      count = 0; 
    }
  }

  return maxCount;
}

void main() {
  List<int> nums1 = [1, 1, 0, 1, 1, 1];
  print(findMaxConsecutiveOnes(nums1)); 

  List<int> nums2 = [1, 0, 1, 1, 0, 1];
  print(findMaxConsecutiveOnes(nums2)); 
}
