//Given a list of integers nums return a value in the list which
//is a local peak defined as n[i] > n[i-1] and n[i] > n[i+1].

//To do this I iterated through the list checking if the left and right values
//were higher or lower than the current. If both are higher then return i.

//Time complexity is O(n)

//Time: 227ms Beats: 93.75%
//Memory: 143.7MB Beats: 12.50%
class Solution {
  int findPeakElement(List<int> nums) {
      if(nums.length <= 1){
          return 0;
      }
      for(int i = 1 ; i < nums.length - 1 ; ++i){
          if(nums[i] > nums[i - 1] && nums[i] > nums[i + 1]){
              return i;
          }
      }
      if(nums[0] < nums[1]){
          return nums.length - 1;
      }
      return 0;
  }
}
