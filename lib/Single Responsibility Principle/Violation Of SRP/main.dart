
import 'dart:io';
import 'Person.dart';
import 'User.dart';

void main(List<String> args) {
  print('!!Welcome to Dart Game!!');

  bool retry = false;
  do {
    retry = false;
    print('\nEnter First Name:');
    String? firstName = stdin.readLineSync();
    if(firstName != null && firstName == '') {
      print('Error: First Name is not entered.');
      print('Do you want to continue, press Y | y.');
      String? input = stdin.readLineSync();
      if(input != null && input == 'Y' || input == 'y') {
        retry = true;
        continue;
      }
      print('Closed!!');
      return;
    }

    print('\nEnter Last Name:');
    String? lastName = stdin.readLineSync();
    if(lastName != null && lastName == '') {
      print('Error: Last Name is not entered.');
      print('Do you want to continue, press Y | y.');
      String? input = stdin.readLineSync();
      if(input != null && input == 'Y' || input == 'y') {
        retry = true;
        continue;
      }
      print('Closed!!');
      return;
    }

    Person person = Person(firstName!, lastName!);

    User user = User(person);
    user.userName = '${user.person.firstName}.${user.person.lastName}@dart.com';

    print('\nfHi ${person.firstName} ${person.lastName},\nCongrats!!, Your account is generated.\nYour user name is ${user.userName}.');
    user.play();
  } while (retry);
}