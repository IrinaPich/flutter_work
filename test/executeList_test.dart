import 'package:test/test.dart';
import 'package:flutter_work/command_line/executeList.dart';
import "dart:io";

void main() {
  String separator = Platform.pathSeparator;

  test('Parent directory', () {
    var parameter = '';
    var list = getDirectoryList(parameter);
    assert(list.contains('.${separator}bin'));
  });

/*  test('List of current directory', () {
    var parameter = '';
    var list = getDirectoryList(parameter);
    var expected = [
      './.dart_tool',
      './.git',
      './.github',
      './.gitignore',
      './.idea',
      './.metadata',
      './.packages',
      './analysis_options.yaml',
      './bin',
      './build',
      './flutter_work.iml',
      './lib',
      './pubspec.lock',
      './pubspec.yaml',
      './README.md',
      './test',
      './windows'];
    expect(
        list,
        equals(expected));
  });*/

  test('Parent directory', () {
    var parameter = '..';
    var list = getDirectoryList(parameter);
    var expected = ['..${separator}flutter_work'];
    expect(list, equals(expected));
  });

  test('Directory Lib', () {
    var parameter = 'lib';
    var list = getDirectoryList(parameter);
    assert(list.contains('lib${separator}factorial_helloworld'));
  });
}
