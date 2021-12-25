
import 'dart:io';
import 'dart:math';

class random {
  var guess,
      isCorrect = false,
      totalGuesses = 0;
  void games1() {
    print('╔═══════════════════════════════════════════════');
    print('║               GUESS THE NUMBER                ');
    var r = Random();
    var answer = r.nextInt(100) + 1;
    print('╟───────────────────────────────────────────────');
    do {
      stdout.write('║ Guess the number between 1 and 100: ');
      String? input = stdin.readLineSync();
      guess = int.tryParse(input!);
      if (guess != null) {
        totalGuesses++;
        if (answer == guess) {
          print('║ ➜ $guess is CORRECT ❤  Total guesses : $totalGuesses');
          isCorrect = true;
        } else if (answer < guess) {
          print('║ ➜ $guess is TOO HIGH! ▲');
        } else {
          print('║ ➜ $guess is TOO LOW! ▼');
        }

        print('╟───────────────────────────────────────────────║');
      }
    } while (!isCorrect);
    print('║                   THE END                     ║');
    print('╚═══════════════════════════════════════════════║');
  }
}
void main() {
  var newgame = random();
  newgame.games1();
  while (true) {
    stdout.write('Play again(Y/y or N/n): ');
    var again = stdin.readLineSync();
    if (again == "Y" || again == "y") {
      int i = 0;
      while (i < 1) {
        newgame.isCorrect = false;
        newgame.games1();
        break;
      }
    }
    if (again == "N" || again == "n") {
      break;
    }
  }
}
