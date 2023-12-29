
class Employee {

  final String name;
  double? salary;
  Employee? manager;

  Employee(this.name);

  set assignManager(Employee manager) => this.manager = manager;

  set calculatePerHourRate(int band) {
    final double baseAmount = 12.50;
    double salary = baseAmount + (band * 2);
    /*Post-Condition*/
    // if(salary > 20.0) {
    //   throw Exception('Employee salary is over the threshold');
    // }
    this.salary = salary;
  }

  @override
  String toString() => '\nEmployee: \nName: $name\nSalary: $salary\nPeM: ${manager?.name}';
}