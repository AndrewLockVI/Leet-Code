//Lazy solution to the problem
//Remove first instance of the string while it is contained
//in the list. 
class Solution {
  String removeOccurrences(String s, String part) {
      while(s.contains(part)){
          s = s.replaceFirst(part, "");
      }
      return s;
  }
}
