
import 'IManager.dart';
import 'BaseEmployee.dart';

class CEO extends BaseEmployee implements IManager {

  CEO(super.name);

  @override
  set calculatePerHourRate(int band) {
    final double baseAmount = 150;
    salary = baseAmount + (band * 4);
  }

  @override
  void generatePerformanceReview() => print("I'm reviewing a direct report's performance.");

  @override
  String toString() => '\nCEO: \nName: $name\nSalary: $salary';
}