
import 'IEmployee.dart';

/*Common for all types like: Employee or Developer Employee, Manager, CEO*/
/*All kind of Employee has following params*/

abstract class BaseEmployee implements IEmployee {

  @override
  late String name;

  @override
  late double salary;

  BaseEmployee(this.name);

  @override
  set calculatePerHourRate(int band) {
    final double baseAmount = 12.50;
    double salary = baseAmount + (band * 2);
    this.salary = salary;
  }
}