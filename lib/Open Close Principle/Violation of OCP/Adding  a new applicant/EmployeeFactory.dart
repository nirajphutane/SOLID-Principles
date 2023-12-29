
import 'Applicant.dart';
import 'Employee.dart';

class EmployeeFactory {

  Employee createEmployee(Applicant applicant) {
    String emailId = '${applicant.firstName}.${applicant.lastName}@CompanyDomain.com';
    Employee employee = Employee(applicant.firstName, applicant.lastName, emailId);
    employee.isManager = applicant.isManager;
    return employee;
  }
}