
import 'ManagerApplicant.dart';
import 'IApplicant.dart';
import 'Employee.dart';
import 'Applicant.dart';

void main(List<String> args) {
  final List<IApplicant> applicants = [
    Applicant('David', 'Brown'),
    ManagerApplicant('James', 'Smith'),
    Applicant('Marry', 'Pit'),
    Applicant('Jacob', 'Ethan'),
    ManagerApplicant('Michael', 'Matthew'),
    Applicant('William', 'Turner'),
    ManagerApplicant('Elizabeth', 'Swann')
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