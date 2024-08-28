void main(List<String> args) {
  var arrs = ["-1", "1", "2", null, "3", "4", "5", "6", "7"];
  Map<dynamic, List<String?>?>? sMap = {1: null, 2: [], 3: ["x", "y", "z"]};
  Map<dynamic, List<dynamic>?>? map = {"first": ["a", "b", "c", "d"]};
  map.addAll(sMap);

  // Sử dụng tryParse để tránh lỗi khi chuỗi không thể chuyển đổi thành số
  List<int> arrsToInt = arrs.map((e) => int.tryParse(e ?? '') ?? 0).toList();
  map["second"] = arrsToInt;

  // Kiểm tra null trước khi gọi sublist
  var lastList = sMap.values.last;
  map["third"] = lastList != null && lastList.length > 1 ? lastList.sublist(1) : [];

  // Xử lý khi dùng phép toán ...
  List<dynamic> fourthList = [
    ...arrs.where((e) => e != null).map((e) => int.parse(e!)).where((e) => e % 2 == 1),
    ...arrs.where((e) => e == null)
  ];
  if (sMap[3] != null) {
    fourthList.addAll(sMap[3]!.sublist(0, 2));
  }
  map["fourth"] = fourthList;

  print(map);
}
