
import 'EmployeeFactory.dart';
import 'Employee.dart';
import 'Applicant.dart';

void main(List<String> args) {
  final List<Applicant> applicants = [
    Applicant('David', 'Brown'),
    Applicant('James', 'Smith'),
    Applicant('Marry', 'Pit'),
    Applicant('Jacob', 'Ethan'),
    Applicant('Michael', 'Matthew'),
    Applicant('William', 'Turner'),
    Applicant('Elizabeth', 'Swann')
  ];

  final EmployeeFactory factory = EmployeeFactory();
  final List<Employee> employees = [];
  for(Applicant applicant in applicants) {
    print(applicant.toString());
    employees.add(factory.createEmployee(applicant));
  }

  for(Employee employee in employees) {
    print(employee.toString());
  }
}