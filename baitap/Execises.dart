class ScreenSize {
  final double width;
  final double height;

  ScreenSize(this.width, this.height);

  double get scaleWidth => width / 450.0;
  double get scaleHeight => height / 960.0;
}

// Tạo đối tượng global screenSize
final screenSize = ScreenSize(900, 1280);

// Extension cho kiểu num
extension ScaledNum on num {
  double get w => this * screenSize.scaleWidth;
  double get h => this * screenSize.scaleHeight;
}

void main() {
  final h = 64.w;
  print('Giá trị sau khi chuyển đổi: $h');
}
