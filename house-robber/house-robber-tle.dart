//Find max value that can be robbed from homes on a block where
//adjacent houses can't be robbed.
//Time: TLE
//Memory: TLE
class Solution {
  int rob(List<int> nums) {
      int max = 0;
      for(int i = 0 ; i < nums.length ; ++i){
          int current = maxRobbed(nums, i, {}, {});
          if(current > max){
              max = current;
          }
      }
      return max;
  }
  int maxRobbed(List<int> nums, int current_house , Set<int> no_rob_list, Map<String, int> memo){
      if(no_rob_list.contains(current_house)){
          return 0;
      }
      no_rob_list.add(current_house - 1);
      no_rob_list.add(current_house);
      no_rob_list.add(current_house + 1);

      if(nums.length == 0){
          return 0;
      }
      if(nums.length == 1){
          return nums[0];
      }
      String curr = "";
      for (int number in nums) {
         curr += nums.toString() + " ";
      } 
      curr += current_house.toString();
      if(memo[curr] != null){
          int ret_int =  (memo[curr] ?? 0);
          return ret_int;
      }

      int current_val = nums[current_house];
      int max = 0;
      for(int i = 0 ; i < nums.length ; ++i){
          int current = maxRobbed(nums, i, Set.from(no_rob_list),memo);
          if(current > max){
              max = current;
          }
      }
      memo[curr] = max + current_val;
      return max + current_val;
  }
}
