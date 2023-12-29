
import 'Console.dart';
import 'Person.dart';
import 'PersonFactory.dart';
import 'User.dart';
import 'UserFactory.dart';
import 'Input.dart';
import 'Messages.dart';

class Dashboard {

  static bool _retry = false;

  static void run() {
    do {
      _retry = false;
      _start();
    } while (_retry);
  }

  static void _start() {
    Console.show(Messages.welcome);

    String? firstName = Input.take(InputMessages.firstName, (bool retry) {
      _retry = retry;
    });
    if(firstName == null) return;

    String? lastName = Input.take(InputMessages.lastName, (bool retry) {
      _retry = retry;
    });
    if(lastName == null) return;

    final Person person = PersonFactory.createPerson(firstName, lastName);
    final User user = UserFactory.createUser(person);

    Console.show(Messages.successMessage('${user.person.firstName} ${user.person.lastName}', user.userName));

    user.play();
  }
}