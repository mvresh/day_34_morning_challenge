import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test("Test 1", () {

    expect(minRemovals('abcde', 'cab'), equals(2));
  });

  test("Test 2", () {

    expect(minRemovals('mississippi', 'pope'), equals(11));
  });

  test("Test 1 challenge 2", () {

    expect(isAnagramAndCompleteHamming('pope','epop'), equals(true));
  });

  test("Test 2 challenge 2", () {

    expect(isAnagramAndCompleteHamming('p','p'), equals(false));
  });

  test("Test 3 challenge 2", () {

    expect(isAnagramAndCompleteHamming('po','op'), equals(true));
  });

  test("Test 4 challenge 2", () {

    expect(isAnagramAndCompleteHamming('rope','op'), equals(false));
  });


}
