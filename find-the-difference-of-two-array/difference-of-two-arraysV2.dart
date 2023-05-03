//Same as other solution but better because it uses
//sets instead of a map which decreases overhead memory usage.
//Time: 332ms Beats: 80%
//Memory: 151MB Beats: 50%

class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
      Set<int> set1 = {};
      Set <int> set2 = {};
      for(int i = 0 ; i < nums1.length ; ++i){
          set1.add(nums1[i]);
      }
      for(int i = 0 ; i < nums2.length ; ++i){
          set2.add(nums2[i]);
      }
      for(int i = 0 ; i < nums1.length ; ++i){
          set2.remove(nums1[i]);
      }
      for(int i = 0 ; i < nums2.length ; ++i){
          set1.remove(nums2[i]);
      }
      
      return [set1.toList() , set2.toList()];
  }
}
