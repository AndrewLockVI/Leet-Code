//Based on the regexp p return true if s is a match of it.
//I used the built in regexp checker for dart because work smarter
//not harder. The time complexity of this is O(n) where n is the length
//of the string.
//Time: 654ms Beats: 35%
//Memory: 162.9MB Beats: 50%
class Solution {
  bool isMatch(String s, String p) {
      RegExp regex = RegExp('^$p\$');
      return regex.hasMatch(s);
  }
}
