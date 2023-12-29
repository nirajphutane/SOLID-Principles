
import 'Console.dart';
import 'Messages.dart';

class Input {

  static String? take(String fieldName, Function onRetry) {
    String? text = Console.input(InputMessages.enterInput(fieldName));
    if(text == null) {
      Console.show(Errors.wrongInputError(fieldName));
      String? text = Console.input(InputMessages.retry);
      onRetry(text == 'Y' || text == 'y');
    }
    return text;
  }
}