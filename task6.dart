import "dart:io";

void main() {
  List<String> names = [];
  while (true) {
    stdout.write("Enter doctor name:");
    String? name = stdin.readLineSync();
    names.add(name!);

    stdout.write("Do you want add another doctor? (yes/no) : ");
    String? answer = stdin.readLineSync();
    if (answer != "yes") {
      break;
    }
  }

  List<double> salaries = [];
  for (int i = 0; i < names.length; i++) {
    stdout.write("Enter salary for ${names[i]} :");
    double salary = double.parse(stdin.readLineSync()!);
    salaries.add(salary);
  }
  double total = 0;
  double max = salaries[0];

  for (int i = 0; i < names.length; i++) {
    total += salaries[i];
    if (salaries[i] > max) {
      max = salaries[i];
    }
  }

  double average = total / salaries.length;
  print("\n Total salary :$total");
  print("Average salary : $average");
  print("Highest salary : $max");
}
