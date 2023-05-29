//Given a list of nums where each number represents the total distance you can jump from that position
//return the total number of jumps required to make it to the end.
//Time: 1629ms Beats: 6.67%
//Memory: 152.5MB Beats: 13.33%

class Solution {
  List<int> memo = [];
  int jump(List<int> nums) {
      memo = List.filled(nums.length, 1000000000);
      return shortest_jump(nums, 0 , 0);
  }
  int shortest_jump(List<int> nums, int index, int jumps){
      if(index >= nums.length - 1){
          return jumps;
      }
      if(memo[index] <= jumps){
          return 10000000;
      }
      memo[index] = jumps;
      int min = 100000000;
      for(int i = nums[index] ; i >= 1 ; --i){
          int curr = shortest_jump(nums, index + i , jumps + 1);
          if(curr < min){
              min = curr;
          }
      }
      return min;
  }
}
