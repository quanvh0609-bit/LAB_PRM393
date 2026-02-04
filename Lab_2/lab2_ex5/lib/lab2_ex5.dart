// 1. Async function using Future + await
Future<String> fetchUserData(String userName) async {
  print('Đang tải dữ liệu của $userName...');

  // 2. Use Future.delayed() to simulate loading
  await Future.delayed(Duration(seconds: 2));

  return 'Dữ liệu của $userName đã được tải thành công!';
}

// Another async function with error handling
Future<int?> calculateAge(String? birthYear) async {
  print('Đang tính tuổi...');

  await Future.delayed(Duration(seconds: 1));

  // 3. Practice null-safety operators
  // Sử dụng ?. operator - null-aware operator
  int? year = int.tryParse(birthYear ?? '');

  if (year == null) {
    return null;
  }

  return 2026 - year;
}

// 4. Create a simple Stream of integers
Stream<int> countdownStream(int start) async* {
  for (int i = start; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

// Stream that generates random messages
Stream<String> messageStream() async* {
  List<String> messages = [
    'Tin nhắn 1: Xin chào!',
    'Tin nhắn 2: Bạn khỏe không?',
    'Tin nhắn 3: Hẹn gặp lại!',
  ];

  for (String msg in messages) {
    await Future.delayed(Duration(seconds: 1));
    yield msg;
  }
}

// Demonstrating null safety operators
void demonstrateNullSafety() {
  print('\nNULL SAFETY OPERATORS');

  String? nullableString;

  // ? operator - nullable type
  print('1. Nullable string: $nullableString');

  // ?? operator - null-aware operator (cung cấp giá trị mặc định)
  String result1 = nullableString ?? 'Giá trị mặc định';
  print('2. Sử dụng ?? operator: $result1');

  // ?. operator - null-aware access
  int? length = nullableString?.length;
  print('3. Độ dài của null string (dùng ?.): $length');

  // ! operator - null assertion (chỉ dùng khi chắc chắn không null)
  String? maybeNull = 'Giá trị không null';
  int lengthNonNull = maybeNull!.length;
  print('4. Độ dài sau khi dùng !: $lengthNonNull');
}
