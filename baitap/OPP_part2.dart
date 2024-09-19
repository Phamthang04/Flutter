void updateClasses(int flutter, int android, int ios, int web) {
  print('Flutter: $flutter buổi');
  print('Android: $android buổi');
  print('iOS: $ios buổi');
  print('Web: $web buổi');
}

void updateFlutter(int flutter) {
  if (flutter < 10) {
    print('Số buổi học Flutter không thể nhỏ hơn 10.');
    return;
  }
  int android = flutter + 5;
  int ios = android + 3;
  int web = flutter - 2;
  
  if (web < 10) {
    print('Không thể cập nhật, số buổi học Web không thể nhỏ hơn 10.');
    return;
  }

  updateClasses(flutter, android, ios, web);
}

void updateAndroid(int android) {
  if (android < 10) {
    print('Số buổi học Android không thể nhỏ hơn 10.');
    return;
  }
  int flutter = android - 5;
  if (flutter < 10) {
    print('Không thể cập nhật, số buổi học Flutter không thể nhỏ hơn 10.');
    return;
  }
  int ios = android + 3;
  int web = flutter - 2;

  if (web < 10) {
    print('Không thể cập nhật, số buổi học Web không thể nhỏ hơn 10.');
    return;
  }

  updateClasses(flutter, android, ios, web);
}

void main() {
  print('Cập nhật Flutter lên 12 buổi:');
  updateFlutter(12);

  print('\nCập nhật Android lên 18 buổi:');
  updateAndroid(18);
}
