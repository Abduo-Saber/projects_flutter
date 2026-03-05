import "dart:io";

main() {
  test1();
}

void test1() {
  print("enter your number : ");
  int number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print("$number is even number");
  } else {
    print("$number is odd number");
  }
}
