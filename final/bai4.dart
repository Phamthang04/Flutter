String longestCommonPrefix(List<String> strs) {
  if (strs.isEmpty) return "";

  // Duyệt qua từng ký tự theo chiều dọc
  for (int i = 0; i < strs[0].length; i++) {
    String char = strs[0][i]; // Lấy ký tự thứ i của chuỗi đầu tiên
    for (int j = 1; j < strs.length; j++) {
      // Kiểm tra ký tự tại vị trí i của các chuỗi khác
      if (i >= strs[j].length || strs[j][i] != char) {
        return strs[0].substring(0, i); // Trả về tiền tố tới vị trí i
      }
    }
  }

  return strs[0]; // Nếu duyệt hết, trả về chuỗi đầu tiên
}

void main() {
  print(longestCommonPrefix(["flower", "flow", "flight"])); 
  print(longestCommonPrefix(["dog", "racecar", "car"]));
}
