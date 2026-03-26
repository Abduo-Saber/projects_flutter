import "dart:io";
import "dart:math";

void main() {
  print("Welcome to game");
  int correct = 0;
  int wrong = 0;
  int level = 1;
  int correctCount = 0;
  Random random = Random();
  while (true) {
    // show level
    print("\n------ Level $level -----");
    print("Score : $correct correct and $wrong wrong");

    //
    int maxnum;
    if (level == 1)
      maxnum = 5;
    else if (level == 2)
      maxnum = 7;
    else if (level == 3)
      maxnum = 9;
    else if (level == 4)
      maxnum = 12;
    else
      maxnum = 15;

    int num1 = 1 + random.nextInt(maxnum);
    int num2 = 1 + random.nextInt(maxnum);
    int answer = num1 * num2;

    stdout.write("$num1 x $num2 = ");
    String? input = stdin.readLineSync();
    int? userAnswer = int.tryParse(input ?? '');

    if (userAnswer == answer) {
      print("correct !!");
      correct++;
      correctCount++;
      if (correctCount == 3) {
        level++;
        correctCount = 0;
        print(" Level UP ! Now at level $level");
      }
    } else {
      print("Wrong !!");
      wrong++;
      correctCount = 0;
    }

    print("\nContinue? (y/n)");
    stdout.write(">");
    String? Choice = stdin.readLineSync()?.toLowerCase();
    if (Choice == 'n') {
      break;
    }
  }

  print('\n' + '=' * 30);
  print('GAME OVER');
  print('Correct: $correct');
  print('Wrong: $wrong');
  print('Final Level: $level');
  
  int total = correct + wrong;
  if (total > 0) {
    double percent = (correct / total * 100);
    print('Success: ${percent.toStringAsFixed(1)}%');
  }
  print('=' * 30);
  print('Thanks for playing!');

}
