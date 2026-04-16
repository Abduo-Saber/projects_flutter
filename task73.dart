import "dart:io";
import "dart:math";

void main() {
  for (int i = 0; i <= 5; i++) {
    print("num $i");
    for (int j = 0; j <= 12; j++) {
      print("$i * $j = ${i*j}");
    }
  }
}
