extension NumberOperations on int {
  int _validate(int other) => other > 0 ? other : throw ArgumentError("Value must be greater than 0");

  int add(int other) => this + _validate(other);
  int subtract(int other) => this - _validate(other);
  int divide(int other) => this ~/ _validate(other);
  int multiple(int other) => this * _validate(other);
}

void main() {
  int a = 10;
  print("add method: ${a.add(5)}");  
  print("subtract method: ${a.subtract(5)}"); 
  print("divide method: ${a.divide(5)}");  
  print("multiple method: ${a.multiple(5)}"); 
}