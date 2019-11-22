// Challenge 1
// Minimum Removals to Make Two Strings Anagrams
// Create a function that returns the smallest number of letter removals so that
// two strings are anagrams of each other.
//  Examples
//  minRemovals("abcde", "cab") ➞ 2
import 'package:collection/collection.dart';

bool isAnagram(String firstString,String secondString){
  List firstStringList = firstString.split('').toList()..sort();
  List secondStringList = secondString.split('').toList()..sort();

  return ListEquality().equals(firstStringList, secondStringList);
}


minRemovals(String firstString,String secondString){
  List firstStringList = firstString.split('').toList()..sort();
  List secondStringList = secondString.split('').toList()..sort();
  int counter = 0;
  List commonLetters = [];

  if(isAnagram(firstString, secondString)){
    return counter;
  }
  else{
    firstStringList.forEach((element) {
      if(secondStringList.contains(element)){
        commonLetters.add(element);
      }
    });
//    print(output);
    counter = (firstStringList.length - commonLetters.length) + (secondStringList.length - commonLetters.length);
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

isAnagramAndCompleteHamming(String firstString,String secondString){
  return isAnagram(firstString, secondString) && completeHamming(firstString,secondString);
}

bool completeHamming(String firstString, String secondString) {
  for(int i = 0; i < firstString.length; i++){
    if(firstString[i] == secondString[i]){
      return false;
    }
  }
  return true;
}

main() {
  print(minRemovals('abcde', 'cab'));
  print(minRemovals('mississippi', 'pope'));
}
