import 'dart:io';

List<String> getDirectoryList() {
  Directory dir = Directory('.');
  var r = dir.listSync();
  var nameList = r.map((f) => f.path).toList();
  return nameList;
}
