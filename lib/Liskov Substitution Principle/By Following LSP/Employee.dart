
import 'IEmployee.dart';
import 'BaseEmployee.dart';
import 'IPeM.dart';

class Employee extends BaseEmployee implements IPeM {

  Employee(super.name);

  @override
  late IEmployee manager;

  @override
  set assignManager(IEmployee manager) => this.manager = manager;

  @override
  String toString() => '\nEmployee: \nName: $name\nSalary: $salary\nPeM: ${manager.name}';
}