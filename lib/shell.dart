// importing dart:io file
import 'dart:io';
import 'executeQuit.dart';
import 'executeList.dart';

void shell()
{
  String? command;
  while(command != 'quit') {
    print("Please enter the command");
    // Reading string
    command = stdin.readLineSync();


    switch (command) {
      case 'quit':
        functionQuit();
        break;
      case 'list':
        functionList();
        break;
      default:
        print("The command \"$command\" is undefined.");
        break;
    }
  }
}

void main() {
  shell();
}










