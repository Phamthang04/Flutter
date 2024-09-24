class Vehicle {
  String name;
  bool engineRunning = false;
  Vehicle(this.name);

  void startEngine() {
    engineRunning = true;
    print('$name đã khởi động.');
  }

  void stopEngine() {
    engineRunning = false;
    print('$name đã tắt máy.');
  }
}

class Car extends Vehicle {
  Car(String name) : super(name);

  void accelerate() {
    print(engineRunning ? '$name đang tăng tốc.' : 'Hãy khởi động xe trước!');
  }

  void brake() {
    print('$name đang đạp phanh.');
  }
}

void main() {
  var car = Car('G63');
  car.startEngine();
  car.accelerate();
  car.brake();
  car.stopEngine();
}
