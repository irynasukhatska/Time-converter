 import 'dart:io';
 
double hoursToMinutes(double hours) => hours * 60;
double hoursToSeconds(double hours) => hours * 3600;
double minutesToHours(double minutes) => minutes / 60;
double minutesToSeconds(double minutes) => minutes * 60;

void main() {
  while (true) {
    print("Оберіть конвертацію:");
    print("1: Години -> Хвилини");
    print("2: Години -> Секунди");
    print("3: Хвилини -> Години");
    print("4: Хвилини -> Секунди");
    print("5: Вийти");

    String? choice = stdin.readLineSync();

    if (choice == '5') {
      print("Вихід...");
      return;
    }

    print("Введіть значення часу:");
    double? value = double.tryParse(stdin.readLineSync()!);
    if (value == null) {
    print("Будь ласка, введіть коректне число.");
    continue;
    }

    switch (choice) {
      case '1':
        print("Результат: ${hoursToMinutes(value)} хвилин");
        break;
      case '2':
        print("Результат: ${hoursToSeconds(value)} секунд");
        break;
      case '3':
        print("Результат: ${minutesToHours(value)} годин");
        break;
      case '4':
        print("Результат: ${minutesToSeconds(value)} секунд");
        break;
      case '5':
        print("Вихід...");
        return;
      default:
        print("Невірний вибір, спробуйте ще раз.");
    }
  }
}
