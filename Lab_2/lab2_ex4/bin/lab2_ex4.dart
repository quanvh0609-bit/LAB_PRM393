import 'package:lab2_ex4/lab2_ex4.dart' as lab2_ex4;

void main(List<String> arguments) {
  print('=== Exercise 4 - Intro to OOP ===\n');

  print('--- Regular Car (Default Constructor) ---');
  lab2_ex4.Car car1 = lab2_ex4.Car('Toyota', 'Red', 2023);
  car1.displayInfo();
  car1.startEngine();

  print('\n--- Regular Car (Named Constructor) ---');
  lab2_ex4.Car car2 = lab2_ex4.Car.withBrand('Honda');
  car2.displayInfo();
  car2.startEngine();

  print('\n--- Electric Car (Default Constructor) ---');
  lab2_ex4.ElectricCar eCar1 = lab2_ex4.ElectricCar('Tesla', 'Black', 2024, 100);
  eCar1.displayInfo();
  eCar1.startEngine(); // Overridden method
  eCar1.charge();

  print('\n--- Electric Car (Named Constructor) ---');
  lab2_ex4.ElectricCar eCar2 = lab2_ex4.ElectricCar.withBrand('BMW', 80);
  eCar2.displayInfo();
  eCar2.startEngine(); // Overridden method
  eCar2.charge();
}
