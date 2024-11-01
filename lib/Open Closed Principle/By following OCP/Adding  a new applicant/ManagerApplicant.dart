
import 'ManagerFactory.dart';
import 'IEmployeeFactory.dart';
import 'IManagerApplicant.dart';

class ManagerApplicant implements IManagerApplicant {

  @override
  String firstName;

  @override
  String lastName;

  @override
  bool get isManager => true;

  @override
  late IEmployeeFactory employeeFactory;

  ManagerApplicant(this.firstName, this.lastName) {
    employeeFactory = ManagerFactory(this);
  }

  @override
  String toString() => '\nManagerApplicant:\nFirstName: $firstName\nLastName: $lastName'
      '\nIsManager: $isManager';
}