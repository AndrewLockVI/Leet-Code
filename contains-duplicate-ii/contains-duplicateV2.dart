//This is a better solution to the problem. 
//find any repeating integers in the list where
//the absolute value of the index is less than or equal to 
//k. To do this I added previous values to a map and checked them with
//the newest one. If they meet the k rule then it returns true otherwise the
//old value gets replaced. The time complexity of this code is O(n) where n is 
//the length of the nums list. 
//Time: 401ms Beats: 38.46%
//Memory: 199.3MB Beats: 7.69%

class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
      Map<int,int> previous_vals = {};
      for(int i = 0 ; i < nums.length ; ++i){
          if(previous_vals[nums[i]] == null){
              previous_vals[nums[i]] = i;
          }
          else if(((previous_vals[nums[i]] ?? 0) - i).abs() <= k){
              return true;
          }
          else{
              previous_vals[nums[i]] = i;
          }
      }
      return false;
  }
}
