//Find all possible variations of nums where the values
//added together are equal to the target. Achieve
//this by adding either a + or - to the front of the value.
//This code is the brute force solution that gives a tle in leetcode.
//The time complexity of this code is 2^n where n is the length of the list
//nums.
class Solution {
  int findTargetSumWays(List<int> nums, int target) {
      if(nums.length == 0){
          if(target == 0){
              return 1;
          }
          return 0;
      }
      int first_val = nums[0];
      nums.removeAt(0);
      int return_val = findTargetSumWays( List.from(nums) , target - first_val);
      return_val += findTargetSumWays( List.from(nums) , target + first_val );
      return return_val;;

  }
}
