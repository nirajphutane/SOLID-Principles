
import 'IEmailService.dart';

class OutlookEmail implements IEmailService {

  @override
  void send(String from, String to, String message) => print('===\nEmail:\nFrom: $from\nTo: $to\nMessage:\n$message\n===\n');
}