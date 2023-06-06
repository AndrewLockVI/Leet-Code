//Given a list of arrays return true
//if there is a possible configuration of the list
//such that the difference between i and i-1 is always the same for
//i < arr.length.

//To solve I ordered the list and checked to see if the differences were all the same.
//If they are not return false if they are return true.

//Time: 266ms Beats: 100%
//Memory: 145.2MB Beats: 100%

class Solution {
  bool canMakeArithmeticProgression(List<int> arr) {
      arr.sort();
      int diff = arr[1] - arr[0];
      for(int i = 1 ; i < arr.length ; ++i){
          if(arr[i] - arr[i - 1] != diff){
              return false;
          }
      }
      return true;
  }
}
