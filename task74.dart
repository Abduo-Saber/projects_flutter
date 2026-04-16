import "dart:io";
import "dart:math";

void main() {
  int tat = 0;
  print("input num1 : ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("input num2 :");
  int num2 = int.parse(stdin.readLineSync()!);
  for (int i = num1; i <= num2; i++) {
    tat += i;
  }
  print(tat);
}
