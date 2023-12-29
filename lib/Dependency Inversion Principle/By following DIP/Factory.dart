
import 'Developer.dart';
import 'IDeveloper.dart';
import 'Manager.dart';
import 'IManager.dart';
import 'OutlookEmail.dart';
import 'IEmailService.dart';
import 'FirebaseNotification.dart';
import 'INotificationService.dart';

class Factory {

  static IDeveloper createDeveloperInstance() => Developer(emailService, notificationService);

  static IManager createManagerInstance() => Manager();

  static IEmailService get emailService => OutlookEmail();

  static INotificationService get notificationService => FirebaseNotification();
}