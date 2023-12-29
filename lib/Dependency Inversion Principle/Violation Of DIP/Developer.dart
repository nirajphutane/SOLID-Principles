
import 'FirebaseNotification.dart';
import 'OutlookEmail.dart';
import 'Manager.dart';

class Developer {

  late String name;
  late String emailId;
  late Manager manager;
  late String task;
  int _hoursWorked = 0;
  bool _isCompleted = false;

  void performedWork(int hours) {
    _hoursWorked += hours;
    FirebaseNotification notification = FirebaseNotification();
    notification.sendNotification(name, toString());
  }

  void taskCompleted() {
    _isCompleted = true;
    FirebaseNotification notification = FirebaseNotification();
    notification.sendNotification(name, toString());
    OutlookEmail email = OutlookEmail();
    email.sendEmail(emailId, manager.emailId, toString());
  }

  @override
  String toString() => 'Developer: $name\nTask: (${_isCompleted? 'Completed': 'In-Progress'}) $task\nHours Worked: $_hoursWorked';
}