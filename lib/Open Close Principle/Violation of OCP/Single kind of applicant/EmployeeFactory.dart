
import 'Applicant.dart';
import 'Employee.dart';

class EmployeeFactory {

  Employee createEmployee(Applicant applicant) {
    String emailId = '${applicant.firstName}.${applicant.lastName}@CompanyDomain.com';
    return Employee(applicant.firstName, applicant.lastName, emailId);
  }
}