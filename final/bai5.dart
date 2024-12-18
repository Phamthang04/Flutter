int titleToNumber(String columnTitle) {
  int result = 0;
  
  for (int i = 0; i < columnTitle.length; i++) {
    int value = columnTitle.codeUnitAt(i) - 'A'.codeUnitAt(0) + 1; // Lấy giá trị của chữ cái
    result = result * 26 + value; // Tính giá trị cột
  }

  return result;
}

void main() {
  print(titleToNumber("A"));        
  print(titleToNumber("AB"));      
  print(titleToNumber("ZY"));       
  print(titleToNumber("FXSHRXW")); 
}
