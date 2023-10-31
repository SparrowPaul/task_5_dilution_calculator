// Task 5: Sirup Dilution Calculator
import 'dart:io';

void main() {
  try {
    // Prompt the user for inputs
    stdout.write("Enter the amount of syrup in your glass (ml): ");
    double amountOfSyrup = double.parse(stdin.readLineSync()!);

    stdout.write("Enter the current dilution of syrup (%): ");
    double currentDilution = double.parse(stdin.readLineSync()!);

    stdout.write("Enter the recommended dilution of syrup (%): ");
    double recommendedDilution = double.parse(stdin.readLineSync()!);

    // Check for valid input values
    if (amountOfSyrup <= 0 || currentDilution <= 0 || recommendedDilution <= 0) {
      print("Please enter positive values for all inputs.");
    } else {
      // Calculate the amount of water or syrup to add
      double waterAmountToAdd = (amountOfSyrup * (recommendedDilution / 100 - 1)) / (1 - (currentDilution / 100));
      double syrupAmountToAdd = amountOfSyrup - waterAmountToAdd;

      // Provide instructions based on the recommended dilution
      if (recommendedDilution > currentDilution) {
        print("Add $waterAmountToAdd ml of water to your syrup.");
      } else if (recommendedDilution < currentDilution) {
        print("Add $syrupAmountToAdd ml of syrup to your glass.");
      } else {
        print("Your syrup is already at the recommended dilution.");
      }
    }
  } on FormatException {
    print("Invalid input. Please enter valid numbers.");
  }
}
