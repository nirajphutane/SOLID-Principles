
import 'Employee.dart';
import 'IManagerFactory.dart';

class ManagerFactory extends IManagerFactory {

  ManagerFactory(super.applicant);

  @override
  Employee createEmployee() {
    String emailId = '${applicant.firstName}.${applicant.lastName}@CompanyDomain.com';
    Employee employee = Employee(applicant.firstName, applicant.lastName, emailId);
    employee.isManager = applicant.isManager;
    return employee;
  }
}