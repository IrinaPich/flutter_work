
import 'dart:io';
import 'package:flutter_work/executeCat.dart';

import 'executeList.dart';

void shell()
{
  String? input;
  List<String> command = ['qq'];
  String? parameter;
  while(command[0] != 'quit') {
    parameter = null;
    print("Please enter the command");
    input = stdin.readLineSync();
    if (input == null || input.isEmpty ) {
      continue;
    }

    command = input.split(' ');

    switch (command[0]) {
      case 'quit':
        print('"The command, "quit" was executed! \nGood buy!"');
        break;
      case 'list':
        if (command.length > 1) {
          parameter = command[1];
        }
        var resultList = getDirectoryList(parameter);
        resultList.forEach((path) => print(path));
        break;
      case 'cat':
        if (command.length > 1) {
          parameter = command[1];
          getFileContent(parameter);
        }
        else {
          print('file name is required');
        }
        break;
      default:
        print("The command \"${command[0]}\" is undefined.");
        break;
    }
  }
}

void main() {
  shell();
}










