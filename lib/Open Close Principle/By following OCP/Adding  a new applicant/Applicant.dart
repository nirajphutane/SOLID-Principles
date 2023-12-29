
import 'EmployeeFactory.dart';
import 'IEmployeeFactory.dart';
import 'IApplicant.dart';

class Applicant implements IApplicant{

  @override
  late String firstName;

  @override
  late String lastName;

  @override
  late IEmployeeFactory employeeFactory;

  Applicant(this.firstName, this.lastName) {
    employeeFactory = EmployeeFactory(this);
  }

  @override
  String toString() => '\nApplicant:\nFirstName: $firstName\nLastName: $lastName';
}