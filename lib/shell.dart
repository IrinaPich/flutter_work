// importing dart:io file
import 'dart:io';
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
        print('"The command, "quit" was executed! \nGood buy!"');
        break;
      case 'list':
        var resultList = getDirectoryList();
        resultList.forEach((path) => print(path));
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










