
import 'IApplicant.dart';
import 'Employee.dart';

abstract class IEmployeeFactory {

  final IApplicant applicant;

  IEmployeeFactory(this.applicant);

  Employee createEmployee();
}