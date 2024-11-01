
import 'IEmployeeFactory.dart';
import 'IExecutiveApplicant.dart';
import 'ExecutiveFactory.dart';

class ExecutiveApplicant implements IExecutiveApplicant {

  @override
  String firstName;

  @override
  String lastName;

  @override
  late IEmployeeFactory employeeFactory;

  @override
  bool get isExecutive => true;

  @override
  bool get isManager => true;

  ExecutiveApplicant(this.firstName, this.lastName) {
    employeeFactory = ExecutiveFactory(this);
  }

  @override
  String toString() => '\nExecutiveApplicant:\nFirstName: $firstName\nLastName: $lastName'
      '\nIsManager: $isManager\nIsExecutive: $isExecutive';
}