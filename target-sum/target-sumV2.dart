//This is the same as the other implementation but uses
//memoization and DP to increase the speed greatly.
//Time: 784ms Beats: 100%
//Memory: 175.9MB Beats: 30%

class Solution {
  Map<String,int> vals = {};
  int findTargetSumWays(List<int> nums, int target) {
      if(vals[nums.length.toString() + " " + target.toString()] != null){
          return((vals[nums.length.toString() + " " + target.toString()] ?? 0));
      }
      if(nums.length == 0){
          if(target == 0){
              return 1;
          }
          return 0;
      }
      int first_val = nums[0];
      nums.removeAt(0);
      int positive_val = findTargetSumWays( List.from(nums) , target - first_val);
      int negative_val = findTargetSumWays( List.from(nums) , target + first_val );
      vals[(nums.length + 1).toString() + " " + target.toString()] = positive_val + negative_val; 
      return positive_val + negative_val;;

  }
}
