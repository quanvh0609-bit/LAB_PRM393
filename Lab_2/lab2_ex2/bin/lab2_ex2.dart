void main(List<String> arguments) {

  // 1. Create a List of integers
  print('--- 1. List Operations ---');
  List<int> numbers = [10, 20, 30, 40, 50];
  print('List: $numbers');

  //indexing
  print('Element at index 0: ${numbers[0]}');
  print('Element at index 2: ${numbers[2]}');

  // Thêm phần tử
  numbers.add(60);
  print('After add(60): $numbers');

  // Xóa phần tử
  numbers.remove(20);
  print('After remove(20): $numbers');

  // 2. Tính toán

  int a = 15;
  int b = 7;


  print('a = $a, b = $b');
  print('a + b = ${a + b}');
  print('a - b = ${a - b}');
  print('a * b = ${a * b}');
  print('a / b = ${a / b}');


  // So sành
  print('a == b: ${a == b}');
  print('a != b: ${a != b}');
  print('a > b: ${a > b}');
  print('a < b: ${a < b}');
  print('a >= b: ${a >= b}');
  print('a <= b: ${a <= b}');

  // Logical operators
  bool x = true;
  bool y = false;
  print('x = $x, y = $y');
  print('x && y: ${x && y}');
  print('x || y: ${x || y}');
  print('!x: ${!x}');

  // 3 Ngôi (? :)
  int max = a > b ? a : b;
  print('max(a, b) = $max');
  String result = (a + b) > 20 ? 'Sum is greater than 20' : 'Sum is 20 or less';
  print('Result: $result');

  // 3. Create a Set (unique values)
  print('\n--- 3. Set Operations ---');
  Set<int> uniqueNumbers = {1, 2, 3, 4, 5};
  print('Original set: $uniqueNumbers');

  // Thêm
  uniqueNumbers.add(6);
  print('After add(6): $uniqueNumbers');

  // Try adding duplicate (won't be added)
  uniqueNumbers.add(3);
  print('After add(3) - duplicate: $uniqueNumbers');

  // Xóa
  uniqueNumbers.remove(2);
  print('After remove(2): $uniqueNumbers');

  // Create set from list with duplicates
  Set<int> fromList = {10, 20, 30, 20, 10, 40};
  print('Set from list with duplicates: $fromList');

  // 4. Create a Map (key-value)

  Map<String, int> studentGrades = {
    'Alice': 85,
    'Bob': 92,
    'Charlie': 78,
  };
  print('Original map: $studentGrades');

  // Map access by key
  print('Alice\'s grade: ${studentGrades['Alice']}');
  print('Bob\'s grade: ${studentGrades['Bob']}');

  // Add new entry
  studentGrades['David'] = 88;
  print('After adding David: $studentGrades');

  // Update existing entry
  studentGrades['Alice'] = 90;
  print('After updating Alice\'s grade: $studentGrades');

  // Remove entry
  studentGrades.remove('Charlie');
  print('After removing Charlie: $studentGrades');


}
