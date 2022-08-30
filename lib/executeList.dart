import 'dart:io';

List<String> getDirectoryList(parameter) {
  String directoryName;
  if (parameter != null) {
   directoryName = parameter;
  } else {
    directoryName = '.';
  }
  Directory directory = Directory(directoryName);

  var r = directory.listSync();
  var nameList = r.map((f) => f.path).toList();
  return nameList;
}
