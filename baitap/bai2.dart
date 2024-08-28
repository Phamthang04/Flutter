void main(List<String> args) {
 List arr = [
   1,
   2,
   3,
   "đây",
   "kết",
   "là",
   true,
   false,
   {true: "buổi", 1: "học", 10.2: ":", false: "dart basics"},
   ['thứ', 'quả', 'về'],
   "(phần 1)",
   {"flutter": "dart"},
 ];

 /// Lấy data từ array trên và tạo ra 1 String với giá trị sau:
 /// "Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)"
 
 String s1 = "${arr[3].toString().substring(0, 1).toUpperCase()}${arr[3].toString().substring(1)}";
 String s2 = arr[5]; 
 String s3 = arr[4];
 String s4 = arr[9][0]; 
 String s5 = arr[8][true];
 String s6 = arr[8][1]; 
 String s7 = arr[8][10.2]; 
 String s8 = arr[8][false].toString().toUpperCase();
 String s9 = arr[10];

 // Ghép các chuỗi lại với nhau để tạo ra kết quả mong muốn
 String result = "$s1 $s2 $s3 $s5 $s6 $s4 ${arr[1]} ${arr[9][2]} Dart$s7 $s8 $s9";
 print(result);
}
