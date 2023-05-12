//Return all integers that are in both lists. 
//To do this first I added the first list to a set.
//I then checked the second list to see if the values existed in the set
//if they do then they get added to a duplicate set. Finally I converted
//the set to a list and returned it. The time complexity of this code is
//O(n) where n is the number of integers in both lists combined.
//Time: 265ms Beats: 90.91%
//Memory: 143MB Beats: 84.85%

class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
      Set<int> set_vals ={};
      Set<int> return_vals = {};
      for(int i = 0 ; i < nums1.length ; ++i){
          set_vals.add(nums1[i]);
      }
      for(int i = 0 ; i < nums2.length ; ++i){
          if(set_vals.contains(nums2[i])){
              return_vals.add(nums2[i]);
          }
      }
      List<int> return_list = return_vals.toList();
      return return_list;
  }
}


