
import 'Employee.dart';
import 'IApplicant.dart';
import 'IEmployeeFactory.dart';

class EmployeeFactory extends IEmployeeFactory {

  EmployeeFactory(super.applicant);

  @override
  Employee createEmployee() {
    String emailId = '${applicant.firstName}.${applicant.lastName}@CompanyDomain.com';
    return Employee(applicant.firstName, applicant.lastName, emailId);
  }
}