import 'package:lab2_ex5/lab2_ex5.dart' as lab2_ex5;

void main(List<String> arguments) async {

  // 1 & 2. ASYNC FUNCTION với FUTURE + AWAIT

  print('ASYNC & FUTURE');

  // Gọi async function và đợi kết quả
  String userData = await lab2_ex5.fetchUserData('Nguyễn Văn A');
  print('$userData\n');

  // Tính tuổi với null safety
  int? age = await lab2_ex5.calculateAge('2000');
  print('Tuổi: ${age ?? "Không xác định"} tuổi\n');

  // Thử với giá trị null
  int? ageNull = await lab2_ex5.calculateAge(null);
  print('Tuổi khi null: ${ageNull ?? "Không xác định"}\n');


  // 3. NULL SAFETY OPERATORS
  lab2_ex5.demonstrateNullSafety();


  // 4. STREAMS - Đếm ngược
  print('\nĐẾM NGƯỢC NÈ');
  print('Đếm ngược từ 5:');

  await for (int count in lab2_ex5.countdownStream(5)) {
    print('$count');
  }
  print('Hết giờ!\n');

  // Stream messages
  print('TIN NHẮN NÈ');
  await for (String message in lab2_ex5.messageStream()) {
    print(message);
  }

}
