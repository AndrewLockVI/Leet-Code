//Given an input list remove duplicate values.
//Leetcode was dumb on this one and had to use some stupid side effect crap
//what I did was get all unique values in the list by creating a set which
//innately only stores unique values then switching that set back to a list.
//I would not have needed this much code if they let me use the .toList method
//for the set.

//Runtime: 262ms Beats: 100%
//Memory: 145.3MB Beats: 45.26%

void main(){
    Solution sol = new Solution();
    List<int> nums = [0 , 3, 4, 5, 6,6,6,7,8,9,9,6,5,3,2];
    //Init list
    print(nums);
    //Shorten list
    sol.removeDuplicates(nums);
    //New list
    print(sol.num_list);
}

class Solution {
  List<int> num_list = [];

  int removeDuplicates(List<int> nums) {
      Set<int> nums_set = nums.toSet();
      int count = 0;
      for(var i in nums_set){
          nums[count] = i;
          count += 1;
      }
      for(int i = 0; i < nums_set.length; ++i){
          num_list.add(nums[i]);
      }
      return nums_set.length;
  }
}
