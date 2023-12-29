
import 'Person.dart';
import 'User.dart';

class UserFactory {

  static User createUser(Person person) => User(person);
}