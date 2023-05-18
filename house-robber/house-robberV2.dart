//The problem with my TLE solution is that I was creating a new memoization table for each different starting point thus 
//forgetting a lot of the sub problems. Now with my current implementation this is no longer an issue.
//Time: 244ms Beats: 85%
//Memory: 141.4MB Beats: 92.50%
class Solution {
  Map<String, int> memo = {};
  int rob(List<int> nums) {
      int max = 0;
      for(int i = 0 ; i < nums.length ; ++i){
          int current = maxRobbed(nums, i, {});
          if(current > max){
              max = current;
          }
      }
      return max;
  }
  int maxRobbed(List<int> nums, int current_house , Set<int> no_rob_list){
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
      List<int> no_vals = [];
      for (int number in nums) {
          no_vals.add(number);
      } 
      no_vals.sort();
      for(int vals in no_vals){
          curr += vals.toString() + " ";
      }
      curr += current_house.toString();
      if(memo[curr] != null){
          int ret_int =  (memo[curr] ?? 0);
          return ret_int;
      }

      int current_val = nums[current_house];
      int max = 0;
      for(int i = 0 ; i < nums.length ; ++i){
          int current = maxRobbed(nums, i, Set.from(no_rob_list));
          if(current > max){
              max = current;
          }
      }
      memo[curr] = max + current_val;
      return max + current_val;
  }
}
