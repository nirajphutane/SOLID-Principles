import 'BaseEmployee.dart';
import 'CEO.dart';
import 'Employee.dart';
import 'Manager.dart';

void main(List<String> args) {

  BaseEmployee ceo = CEO('Tim Corey');    // CEO ceo = CEO('Tim Corey');
  ceo.calculatePerHourRate = 15;
  print(ceo.toString());

  Employee vp = Manager('Emma Stone');    // Manager vp = Manager('Emma Stone');
  vp.calculatePerHourRate = 10;
  vp.assignManager = ceo;
  print(vp.toString());

  Employee developer = Employee('Paul Walker');
  developer.assignManager = vp;
  developer.calculatePerHourRate = 8;
  print(developer.toString());
}