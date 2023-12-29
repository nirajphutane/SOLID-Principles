
import 'INotificationService.dart';

class FirebaseNotification implements INotificationService {

  @override
  void send(String from, String message) => print('---\nNotification:\nFrom: $from\nMessage:\n$message\n---\n');
}