//Given a list of integers nums find the subarray
//that contains the highest value and return it.
//To do this iterate through nums each time adding to the current
//which is the value of the current subarray. If the subarray drops below 0
//then start a new subarray and continue on. Whenever you have a subarray with a value
//greater than that of the current max set max = current.
//The time complexity of this code is O(n) where n is the length
//of the list nums.
//Concept used: Sliding window
//Time: 340ms Beats: 100%
//Memory: 181.3MB Beats: 49.55%

class Solution {
  int maxSubArray(List<int> nums) {
      int max = -1000000;
      int current = 0;
      for(int i = 0 ; i < nums.length ; ++i){
          current += nums[i];
          if(current > max){
              max = current;
          }
          if(current < 0){
              current = 0;
          }
      }
      return max;
  }
}
