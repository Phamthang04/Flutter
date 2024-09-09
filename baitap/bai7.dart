import 'dart:math';

class Student {
  String name;
  Set<String> enrolledClasses = {};

  Student(this.name);

  void enrollInClass(String className) => enrolledClasses.add(className);
  
  @override
  String toString() => 'Học viên: $name, Tham gia lớp: ${enrolledClasses.join(', ')}';
}

class Classroom {
  String name;
  Set<Student> students = {};

  Classroom(this.name);

  void addStudent(Student student) {
    if (students.add(student)) student.enrollInClass(name);
  }

  void addRandomStudents(int count) {
    const names = ['A', 'B', 'C', 'D', 'E', 'F'];
    var random = Random();
    while (count-- > 0) {
      var name = names[random.nextInt(names.length)];
      addStudent(students.firstWhere((s) => s.name == name, orElse: () => Student(name)));
    }
  }

  @override
  String toString() {
    var sb = StringBuffer('Lớp $name:\n');
    students.forEach((student) => sb.writeln(student));
    return sb.toString();
  }
}

void main() {
  var classes = [
    Classroom('Flutter'),
    Classroom('Android'),
    Classroom('iOS'),
    Classroom('Web')
  ];

  var initialStudents = ['A', 'B', 'C', 'D', 'E', 'F']
      .map((name) => Student(name))
      .toList();

  // Thêm học viên vào các lớp
  classes[0].addStudent(initialStudents[0]);
  classes[0].addStudent(initialStudents[1]);
  classes[1].addStudent(initialStudents[2]);
  classes[1].addStudent(initialStudents[3]);
  classes[2].addStudent(initialStudents[4]);
  classes[2].addStudent(initialStudents[5]);
  classes[3].addStudent(initialStudents[0]);
  classes[3].addStudent(initialStudents[1]);

  // In danh sách học viên hiện tại
  classes.forEach(print);

  // Thêm học viên ngẫu nhiên
  for (var i = 0; i < classes.length; i++) {
    classes[i].addRandomStudents(11 + i); // số học viên cần thêm
  }

  // In danh sách sau khi thêm học viên
  print('\nSau khi thêm học viên ngẫu nhiên:');
  classes.forEach(print);
}
