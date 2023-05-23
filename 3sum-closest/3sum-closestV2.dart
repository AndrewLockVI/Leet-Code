//Three sum closest solution using two pointers and a sorted
//list to speed up search.
//Time: 347ms Beats: 20.83%
//Memory: 148.3MB Beats: 12.50%

class Solution {
  int threeSumClosest(List<int> nums, int target) {
    nums.sort();
    print(nums);
    int min_dist = 10000000;
    int val = 0;
    for(int i = 0 ; i < nums.length - 2; ++i){
      int left = i + 1;
      int right = nums.length - 1;
      while(left != right){
          int current = nums[i] + nums[left] + nums[right];
          if((current - target).abs() < min_dist){
              min_dist = (current-target).abs();
              val = current;
          }
          if(current > target){
              right -= 1;
          }
          else{
              left += 1;
          }
      }
    }
    return val;
  }
}
