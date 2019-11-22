import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test("Test 1", () {

    expect(minRemovals('abcde', 'cab'), equals(2));
  });

  test("Test 2", () {

    expect(minRemovals('mississippi', 'pope'), equals(11));
  });
}
