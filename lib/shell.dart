// importing dart:io file
import 'dart:io';
import 'executeQuit.dart';

void shell()
{
  while(true) {
    print("Please enter the command");
    // Reading string
    String? command = stdin.readLineSync();


    switch (command) {
      case 'quit':
        executeQuit();
        break;
/*    case 'dir':
      executePending();
      break;*/
      default:
        print("Undef");
        break;
    }
  }
}

void main() {
  shell();
}










