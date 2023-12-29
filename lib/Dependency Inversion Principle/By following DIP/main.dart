
import 'Factory.dart';
import 'IDeveloper.dart';
import 'IManager.dart';

void main(List<String> args) {

  IManager manager = Factory.createManagerInstance();
  manager.name = 'Gareth Bale';
  manager.emailId = 'Gareth.Bale@email.com';

  IDeveloper developer = Factory.createDeveloperInstance();
  developer.name = 'Steve Smith';
  developer.emailId = 'Steve.Smith@email.com';
  developer.task = 'JIRA-7707: Create a new welcome screen.';
  developer.manager = manager;

  developer.performedWork(7);
  developer.performedWork(2);
  developer.taskCompleted();
}