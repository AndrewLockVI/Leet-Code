//Given a list of "colors" represented by the numbers 0 1 and 2
//sort the list. I implemented a merge sort algorithm to
//sort the list.
//The time complexity of my code is O(nlog(n)) because that is
//the time complexity of merge sort.
//Time: 255ms Beats: 70%
//Memory: 143.2MB Beats: 20.83%
class Solution {
  void sortColors(List<int> nums) {
      List<int> new_nums = merge(nums);
      for(int i = 0 ; i < nums.length ; ++i){
          nums[i] = new_nums[i];
      }  
  }
  List<int> merge(List<int> nums){
      if(nums.length == 1){
          return nums;
      }
      List<int> l1 = merge(nums.sublist(0, (nums.length / 2).toInt()));
      List<int> l2 = merge(nums.sublist((nums.length / 2).toInt()));
      List<int> l3 = [];
      int first_pt = 0;
      int second_pt = 0;
      while(first_pt < l1.length && second_pt < l2.length){
          if(l1[first_pt] < l2[second_pt]){
              l3.add(l1[first_pt]);
              first_pt += 1;
          }
          else{
              l3.add(l2[second_pt]);
              second_pt += 1;
          }
      }
      while(first_pt < l1.length){
        l3.add(l1[first_pt]);
        first_pt += 1;
      }
      while(second_pt < l2.length){
         l3.add(l2[second_pt]);
         second_pt += 1;
      }
      return l3;
  }
}
