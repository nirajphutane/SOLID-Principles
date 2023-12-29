
class Messages {
  static const String welcome = '\n!!Welcome to Dart!!\n';
  static const String closed = 'Closed!!';
  static String successMessage(String name, String userName) => '\nHi $name,\nCongrats!!, Your account is generated.\nYour user name is $userName.';
}

class InputMessages {
  static String enterInput(String fieldName) => 'Enter $fieldName';
  static const String retry = '\nDo you want to continue, press Y | y.';
  static const String firstName = 'First Name';
  static const String lastName = 'Last Name';
}

class Errors {
  static String wrongInputError(String fieldName) => 'Error: $fieldName is not entered.';
}