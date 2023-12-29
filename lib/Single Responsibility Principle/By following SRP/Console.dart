
import 'dart:io';

class Console {

  static void show(String text) => print(text);

  static String? read() {
    String? text = stdin.readLineSync();
    if(text == '') {
      text = null;
    }
    return text;
  }

  static String? input(String text) {
    show(text);
    return read();
  }
}