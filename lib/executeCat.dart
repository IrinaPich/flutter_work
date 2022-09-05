import 'dart:io';

String getFileContent(String parameter) {
  return File(parameter).readAsStringSync();
}
