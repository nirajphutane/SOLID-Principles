
import 'IApplicant.dart';
import 'Employee.dart';
import 'Applicant.dart';

void main(List<String> args) {
  final List<IApplicant> applicants = [
    Applicant('David', 'Brown'),
    Applicant('James', 'Smith'),
    Applicant('Marry', 'Pit'),
    Applicant('Jacob', 'Ethan'),
    Applicant('Michael', 'Matthew'),
    Applicant('William', 'Turner'),
    Applicant('Elizabeth', 'Swann')
  ];

  final List<Employee> employees = [];
  for(IApplicant applicant in applicants) {
    print(applicant.toString());
    employees.add(applicant.employeeFactory.createEmployee());
  }

  for(Employee employee in employees) {
    print(employee.toString());
  }
}