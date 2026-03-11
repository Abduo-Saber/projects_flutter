import "dart:io";

void main() {
    print("input your agree from 0 to 100");
    int sum = int.parse(stdin.readLineSync() !);
    bool trfal = false;
    if (sum <= 100 && sum >= 90) {
        print("Excellent");
    } else if (sum <= 90 && sum >= 80) {
        print("Very Good");
    } else if (sum <= 80 && sum >= 70) {
        print("Good");
    } else if (sum <= 70 && sum >= 50) {
        print("Pass");
    } else {
        print("Fail");
    }
}
