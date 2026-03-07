import "dart:io";

void main() { task2(); }

void task2() {
    print("enter your number : ");
    int number = int.parse(stdin.readLineSync() !);
    if (number % 2 == 0) {
        print("$number is even number");
        alfaE();
        alfaV();
        alfaE();
        alfaN();
    } else {
        print("$number is odd number");
        alfaO();
        alfaD();
        alfaD();
    }
}

void alfaD() {
    int n = 7;
    int i, j;

    for (i = 1; i <= n; i++) {
        for (j = 1; j <= n; j++) {
            if (j == 1 || ((i == 1 || i == n) && j <= n - 1)) {
                stdout.write("*");
            } else if (i != 1 && i != n && j == n) {
                stdout.write("*");
            } else {
                stdout.write(" ");  // whitespace
            }
        }
        stdout.write("\n");
    }
}

void alfaO() {
    int n = 5;
    int i, j;

    for (i = 1; i <= n; i++) {
        for (j = 1; j <= n; j++) {
            if (j == 1 || j == n || i == 1 || i == n) {
                stdout.write(" *");
            } else {
                stdout.write("  ");
            }
        }
        stdout.write("\n");
    }
}

void alfaE() {
    int n = 7;
    int i, j;

    for (i = 1; i <= n; i++) {
        for (j = 1; j <= n; j++) {
            if (j == 1 || i == 1 || i == n || (i == 4)) {
                stdout.write("* ");
            }
        }
        stdout.write("\n");
    }
}

void alfaV() {
    int n = 7;
    int i, j;

    int x = 1;
    for (i = 1; i <= n; i++) {
        for (j = 1; j < 2 * n; j++) {
            if (j == x || j == 2 * n - x) {
                stdout.write("*");
            } else {
                stdout.write(" ");  // whitespace
            }
        }
        stdout.write("\n");
        x++;
    }
}

void alfaN() {
    int n = 9;
    int i, j;

    for (i = 1; i <= n; i++) {
        for (j = 1; j <= n; j++) {
            if (j == 1 || j == n || i == j) {
                stdout.write("* ");
            } else {
                stdout.write(" ");  // whitespace
            }
        }
        stdout.write("\n");
    }
}
