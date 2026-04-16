import "dart:io";
import "dart:math";

void main() {
  int count = 0;
  for (int i = 1; i <= 100; i++) {
    if (i % 2 == 0) {
      count += 1;
    }
  }
  print(count);
}
