//Find all permutations that add up to 0 using three values from the list.
//Return all unique permutations. The time compexity
//of this solution is O(n^3) because it has to iterate through
//the list three times for each value which is not very efficient.
//Time: TLE
//Memory: TLE
class Solution {
  Set<String> set_strs = {};
  Set<int> first = {};
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> all_perm = permutations(nums);
    return all_perm;
  }

  List<List<int>> permutations(List<int> nums){
    List<List<int>> return_list = [];
    for(int i = 0 ; i < nums.length ; ++i){
      if(first.contains(nums[i])){
        continue;
      }
      first.add(nums[i]);
      for(int x = i + 1; x < nums.length ; ++x){
        for(int y = x + 1 ; y < nums.length ; ++y){
          int first = nums[i];
          int second = nums[x];
          int third = nums[y];
          if(first + second + third == 0){
            List<int> ret = [first , second , third];
            ret.sort();
            String ret_str = ret[0].toString() + " " + ret[1].toString() + " " + ret[2].toString();
            if(set_strs.contains(ret_str)){
              continue;
            }
            set_strs.add(ret_str);
            return_list.add(ret);
          }
        }
      }
    }
    return return_list;
  }
}
