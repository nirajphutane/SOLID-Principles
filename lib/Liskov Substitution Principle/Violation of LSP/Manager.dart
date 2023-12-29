
import 'Employee.dart';

class Manager extends Employee {

  Manager(super.name);

  @override
  set calculatePerHourRate(int band) {
    /*Pre-Condition*/
    // if(band > 13) {
    //   throw Exception('Manager band is over the threshold');
    // }
    final double baseAmount = 16.50;
    salary = baseAmount + (band * 4);
  }

  void generatePerformanceReview() => print("I'm reviewing a direct report's performance.");

  @override
  String toString() => '\nManager: \nName: $name\nSalary: $salary\nPeM: ${manager?.name}';
}