
import 'Person.dart';

class PersonFactory {

  static Person createPerson(String firstName, String lastName) => Person(firstName, lastName);
}