
import 'Employee.dart';

class CEO extends Employee {

  CEO(super.name);

  @override
  set calculatePerHourRate(int band) {
    final double baseAmount = 150;
    salary = baseAmount + (band * 4);
  }

  @override
  set assignManager(Employee manager) => throw UnimplementedError('The CEO has no manager.');

  void generatePerformanceReview() => print("I'm reviewing a direct report's performance.");

  @override
  String toString() => '\nCEO: \nName: $name\nSalary: $salary\nPeM: ${manager?.name}';
}