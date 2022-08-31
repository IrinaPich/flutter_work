import 'package:test/test.dart';
import 'package:flutter_work/executeList.dart';

void main() {
  test('List of current directory', () {
    var parameter = '';
    var list = getDirectoryList(parameter);
    var expected = [
      '.\\.dart_tool',
      '.\\.git',
      '.\\.github',
      '.\\.gitignore',
      '.\\.idea',
      '.\\.metadata',
      '.\\.packages',
      '.\\analysis_options.yaml',
      '.\\bin',
      '.\\build',
      '.\\flutter_work.iml',
      '.\\lib',
      '.\\pubspec.lock',
      '.\\pubspec.yaml',
      '.\\README.md',
      '.\\test',
      '.\\windows'];
    expect(
        list,
        equals(expected));
  });
}
