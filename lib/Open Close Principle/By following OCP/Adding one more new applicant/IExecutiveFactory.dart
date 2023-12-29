
import 'IEmployeeFactory.dart';
import 'IExecutiveApplicant.dart';

abstract class IExecutiveFactory implements IEmployeeFactory {

  @override
  IExecutiveApplicant applicant;

  IExecutiveFactory(this.applicant);
}