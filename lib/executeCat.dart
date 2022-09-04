import 'dart:io';

void getFileContent(parameter) {
  print(parameter);
  File(parameter).readAsString().then((String fileContent) {
    print('File Contents\n---------------');
    print(fileContent);
  });
}
