
import 'Developer.dart';
import 'Manager.dart';

void main(List<String> args) {

  Manager manager = Manager();
  manager.name = 'Gareth Bale';
  manager.emailId = 'Gareth.Bale@email.com';

  Developer developer = Developer();
  developer.name = 'Steve Smith';
  developer.emailId = 'Steve.Smith@email.com';
  developer.task = 'JIRA-7707: Create a new welcome screen.';
  developer.manager = manager;

  developer.performedWork(7);
  developer.performedWork(2);
  developer.taskCompleted();
}