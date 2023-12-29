
import 'Employee.dart';
import 'IExecutiveFactory.dart';

class ExecutiveFactory extends IExecutiveFactory {

  ExecutiveFactory(super.applicant);

  @override
  Employee createEmployee() {
   String emailId = '${applicant.firstName}.${applicant.lastName}@CompanyDomain.com';
   Employee employee = Employee(applicant.firstName, applicant.lastName, emailId);
   employee.isManager = applicant.isManager;
   employee.isExecutive = applicant.isExecutive;
   employee.clientEmailId = '${applicant.firstName}.${applicant.lastName}@ClientDomain.com';
   return employee;
  }
}