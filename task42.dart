import 'dart:math';
import 'dart:io';

void main() {
   
    print('Enter the smallest number:');
    int min = int.parse(stdin.readLineSync() !);

    print('Enter the largest number:');
    int max = int.parse(stdin.readLineSync() !);

    
    Random random = Random();
    int num1 = min + random.nextInt(max - min + 1);
    int num2 = min + random.nextInt(max - min + 1);

    print('What is $num1 * $num2?');
    int userAnswer = int.parse(stdin.readLineSync() !);

   
    int correctAnswer = num1 * num2;

    if (userAnswer == correctAnswer) {
        print(' Correct answer!');
    } else {
        print(' Wrong answer. The correct answer is: $correctAnswer');
    }

}
