
import 'IManagerApplicant.dart';
import 'EmployeeFactory.dart';

abstract class IManagerFactory implements EmployeeFactory {

  @override
  final IManagerApplicant applicant;

  IManagerFactory(this.applicant);
}