import "dart:io";

main() {
  print("input num1 :");
  double num1;
  num1 = double.parse(stdin.readLineSync()!);
  print("input num2 :");
  double num2;
  num2 = double.parse(stdin.readLineSync()!);
  double sum = num1 + num2;
  print("$num1 + $num2 = " + "$sum");
}
