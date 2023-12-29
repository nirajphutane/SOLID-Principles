
import 'CEO.dart';
import 'Employee.dart';
import 'Manager.dart';

void main(List<String> args) {

  CEO ceo = CEO('Tim Corey');
  try {
    ceo.calculatePerHourRate = 15;
    ceo.assignManager = Manager('No manager');
    print(ceo.toString());
  } catch (error) {
    print('\nException: $error');
  }

  Manager vp = Manager('Emma Stone');
  vp.calculatePerHourRate = 10;
  vp.assignManager = ceo;
  print(vp.toString());

  Employee developer = Employee('Paul Walker');
  developer.assignManager = vp;
  developer.calculatePerHourRate = 8;
  print(developer.toString());


}