//Find the position to insert a value in a sorted list
//My implementation uses a binary search to find the position
//and returns the index. The time complexity of this code is
//O(log(n)) where n is the number of elemnents in the nums list.
//Time: 281ms Beats: 56.18%
//Memory: 143.8MB Beats: 17.13%

class Solution {
  int searchInsert(List<int> nums, int target) {
      if(target > nums[nums.length - 1]){
          return nums.length;
      }
      if(target <= nums[0]){
          return 0;
      }
      int upper_bound = nums.length - 1;
      int lower_bound = 0;
      while(true){
          int median = ((upper_bound + lower_bound ) / 2).toInt();
          if(upper_bound - lower_bound == 1){
              if(nums[upper_bound] == target){
                  return upper_bound;
              }
              else if(nums [lower_bound] == target){
                  return lower_bound;
              }
              else{
                  return upper_bound;
              }
          }
          if(nums[median] > target){
              upper_bound = median;
          }
          else if(nums[median] < target){
              lower_bound = median;
          }
          else if(nums[median] == target){
              return median;
          }
      }
  }
}
