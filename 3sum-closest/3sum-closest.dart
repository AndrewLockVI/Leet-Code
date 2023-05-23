//Find the three values in a list that add up to the number
//closest to the target. Once found return that number.
//This is the brute force solution which is very slow.
//Time: 3180ms Beats: 8.33%
//Memory: 158.3MB Beats: 8.33%

class Solution {
  int threeSumClosest(List<int> nums, int target) {
    int closest = (nums[0] + nums[1] + nums[2] - target).abs(); 
    int val = nums[0] + nums[1] + nums[2];
    for(int i = 1 ; i < nums.length ; ++i){
      for(int x = i + 1; x < nums.length ; ++x){
        for(int z = x + 1; z < nums.length ; ++z){
          if((nums[i] + nums[x] + nums[z] - target).abs() < closest){
            closest = (nums[i] + nums[x] + nums[z] - target).abs();
            val = nums[i] + nums[x] + nums[z];
          }
        }
      }
    }
    return val;
  }
}
