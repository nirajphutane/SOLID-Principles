
import 'IManager.dart';

abstract interface class IDeveloper {

  late String name;
  late String emailId;
  late IManager manager;
  late String task;
  int get hoursWorked;
  bool get isCompleted;

  void performedWork(int hours);

  void taskCompleted();
}