void checkScore(int score) {
  if (score >= 80) {
    print('  Score $score: Excellent! Grade A');
  } else if (score >= 60) {
    print('  Score $score: Good! Grade B');
  } else if (score >= 40) {
    print('  Score $score: Pass! Grade C');
  } else {
    print('  Score $score: Fail! Not passed');
  }
}


void getDayName(int day) {
  String dayName;
  switch (day) {
    case 1:
      dayName = 'Monday';
      break;
    case 2:
      dayName = 'Tuesday';
      break;
    case 3:
      dayName = 'Wednesday';
      break;
    case 4:
      dayName = 'Thursday';
      break;
    case 5:
      dayName = 'Friday';
      break;
    case 6:
      dayName = 'Saturday';
      break;
    case 7:
      dayName = 'Sunday';
      break;
    default:
      dayName = 'Invalid day';
  }
  print('  Day $day: $dayName');
}

int addNumbers(int a, int b) {
  return a + b;
}


int multiplyNumbers(int a, int b) => a * b;

String greet(String name) => 'Hello, $name!';

int square(int number) => number * number;

void main(List<String> arguments) {

  requirement1_IfElse();
  requirement2_Switch();
  requirement3_Loops();
  requirement4_Functions();
}

void requirement1_IfElse() {

  checkScore(85);
  checkScore(65);
  checkScore(45);
  checkScore(30);

  print('');
}

void requirement2_Switch() {
  getDayName(1);
  getDayName(3);
  getDayName(5);
  getDayName(7);
  getDayName(10); // Invalid day

  print('');
}

void requirement3_Loops() {
  var fruits = ['Apple', 'Banana', 'Orange', 'Mango'];

  //  FOR loop
  print('\nLoop:');
  for (int i = 0; i < fruits.length; i++) {
    print('  ${i + 1}. ${fruits[i]}');
  }

  // FOR-IN loop
  print('\nFOR-IN:');
  for (var fruit in fruits) {
    print('  - $fruit');
  }

  // forEach()
  print('\nforEach():');
  fruits.forEach((fruit) {
    print('  * $fruit');
  });

  print('');
}

void requirement4_Functions() {
  print('Normal function (addNumbers): 5 + 3 = ${addNumbers(5, 3)}');
  print('Arrow function (multiplyNumbers): 5 × 3 = ${multiplyNumbers(5, 3)}');
  print('Arrow function (greet): ${greet("Hoa")}');
  print('Arrow function (square): square(4) = ${square(4)}');

  print('');
}
