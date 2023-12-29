
import 'Person.dart';

class User {

  final Person person;
  late String userName;

  User(this.person);

  void play() => print('Enjoy Dart!!');
}