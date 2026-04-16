import "dart:io";
import "dart:math";

String reverseString(String input) {
  return input.split('').reversed.join('');
}

void main() {
  String name = "omar";
  print(reverseString(name));
}
