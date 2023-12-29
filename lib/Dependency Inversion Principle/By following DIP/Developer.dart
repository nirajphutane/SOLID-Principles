
import 'IDeveloper.dart';
import 'IEmailService.dart';
import 'INotificationService.dart';
import 'IManager.dart';

class Developer implements IDeveloper {

  @override
  late String name;

  @override
  late String emailId;

  @override
  late IManager manager;

  @override
  late String task;

  int _hoursWorked = 0;

  bool _isCompleted = false;

  @override
  int get hoursWorked => _hoursWorked;

  @override
  bool get isCompleted => _isCompleted;

  final IEmailService emailService;
  final INotificationService notificationService;

  Developer(this.emailService, this.notificationService);

  @override
  void performedWork(int hours) {
    _hoursWorked += hours;
    notificationService.send(name, toString());
  }

  @override
  void taskCompleted() {
    _isCompleted = true;
    notificationService.send(name, toString());
    emailService.send(emailId, manager.emailId, toString());
  }

  @override
  String toString() => 'Developer: $name\nTask: (${isCompleted? 'Completed': 'In-Progress'}) $task\nHours Worked: $hoursWorked';
}