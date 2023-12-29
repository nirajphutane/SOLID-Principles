
import 'Console.dart';
import 'Person.dart';

class User {

  final Person person;
  late String userName;

  User(this.person) {
    userName = '${person.firstName}.${person.lastName}@dart.com';
  }

  void play() => Console.show('Enjoy Dart!!');
}