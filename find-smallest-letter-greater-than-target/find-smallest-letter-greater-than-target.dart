//Given a list of letters return the first
//string that is less than the target. If there are 
//no strings less than the target return index 0.

//My solution first makes sure to see the last index is greater than target
//if not it returns the first val. Then it goes through
//a binary search to find the next value that is greater than the target.

//Time: 275ms Beats: 50%
//Memory: 143.9MB Beats: 54.44%

class Solution {
  String nextGreatestLetter(List<String> letters, String target) {
      if(letters[letters.length - 1].compareTo(target) <=0){
          return letters[0];
      }
      int end = letters.length - 1;
      int start = 0;
      while(end - start > 1){
          int mid = (end + start) ~/ 2;
          if(letters[mid].compareTo(target) >= 1){
              end = mid;
          }
          else{
              start = mid;
          }
      }
      if(letters[start].compareTo(target) > 0){
          return letters[start];
      }
      return letters[end];
  }
}
