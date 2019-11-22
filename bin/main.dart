// Challenge 1
// Minimum Removals to Make Two Strings Anagrams
// Create a function that returns the smallest number of letter removals so that
// two strings are anagrams of each other.
//  Examples
//  minRemovals("abcde", "cab") ➞ 2
import 'package:collection/collection.dart';
minRemovals(String firstString,String secondString){
  List firstStringList = firstString.split('').toList()..sort();
  List secondStringList = secondString.split('').toList()..sort();
  print(firstStringList);
  print(secondStringList);
  int counter = 0;
  List output = [];

  if(ListEquality().equals(firstStringList, secondStringList)){
    return counter;
  }
  else{
    firstStringList.forEach((element) {
      if(secondStringList.contains(element)){
        output.add(element);
      }
    });
//    print(output);
    counter = (firstStringList.length - output.length) + (secondStringList.length - output.length);
    return counter;
  }


}

// Challenge 2
// Farthest Hamming Anagrams
// The Hamming distance between two strings is the number of positions at which
// they differ. Hamming distances can only be calculated for strings of equal length.

/// String s1 = "eleven"
/// String s2 = "twelve"
/// They only have the third position (index 2) in common, giving them a Hamming
/// distance of 5.
/// As anagrams are of identical length, the Hamming distance between them can be
/// calculated.
// String s1 = "read"
// String s2 = "dear"
// These strings differ at the first and last positions, giving them a Hamming distance of 2.

/// Create a function that takes two strings, and returns:
// - true if they are anagrams of each other and their Hamming distance is equal to
//  their length (i.e. no letters in the same positions).
// - false if they aren't anagrams, or
// - Their Hamming distance if they are anagrams with >=1 letter at the same index.

main() {
  print(minRemovals('abcde', 'cab'));
  print(minRemovals('mississippi', 'pope'));
}
