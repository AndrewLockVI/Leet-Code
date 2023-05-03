//Find all unique values that appear in one list but not the other
//then return the unique values as two lists.
//I used a hashmap for this when I should have used a set because 
//I only need to know unique values and not how many of each there are.
//The time complexity of this code is O(n + k) where n is the number of elements
//in the first list and k is the number in the second. 
//Time: 375ms Beats: 30%
//Memory: 150.5MB Beats: 60%

class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
      Map<int , int> map1 = {};
      Map <int, int> map2 = {};
      for(int i = 0 ; i < nums1.length ; ++i){
          map1[nums1[i]] = (map1[nums1[i]] ?? 0) + 1;
      }
      for(int i = 0 ; i < nums2.length ; ++i){
          map2[nums2[i]] = 1;
      }
      for(int i = 0 ; i < nums1.length ; ++i){
          map2.remove(nums1[i]);
      }
      for(int i = 0 ; i < nums2.length ; ++i){
          map1.remove(nums2[i]);
      }
      
      return [map1.keys.toList() , map2.keys.toList()];
  }
}
