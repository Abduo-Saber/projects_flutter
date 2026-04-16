import "dart:io";
import "dart:math";

void main() {
  for (int i = 0; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }
    print("");
  }
}
