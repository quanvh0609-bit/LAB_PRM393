//1. Tạo class với thuộc tính và phương thức
class Car {

  String brand;
  String color;
  int year;


  Car(this.brand, this.color, this.year);


  Car.withBrand(this.brand)
      : color = 'White',
        year = 2024;

  void displayInfo() {
    print('Car: $brand, Color: $color, Year: $year');
  }

  void startEngine() {
    print('$brand: Engine started with gasoline!');
  }
}

// 3.: Tạo lớp con ElectricCar ghi đè phương thức
class ElectricCar extends Car {
  int batteryCapacity; // kWh


  ElectricCar(String brand, String color, int year, this.batteryCapacity)
      : super(brand, color, year);


  ElectricCar.withBrand(String brand, this.batteryCapacity)
      : super.withBrand(brand);

  // Override the startEngine method
  @override
  void startEngine() {
    print('$brand: Electric motor started silently! Battery: ${batteryCapacity}kWh');
  }

  // Phương thức bổ sung
  void charge() {
    print('$brand is charging the battery...');
  }
}
