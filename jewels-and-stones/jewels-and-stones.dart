//For each stone check if the given index is the same character as
//a jewel. If it is add one to the number of jewels returned.
//This algorithm is a O(n + m) time complexity where n is the length of the stones and m is the length of the jewels.
//Runtime: 249ms Beats: 83.33%
//Memory: 141MB Beats: 40.48%
class Solution {
  int numJewelsInStones(String jewels, String stones) {
      Set <String> vals = {};
      for(int i = 0 ; i < jewels.length ; ++i){
          vals.add(jewels[i]);
      }
      int return_val = 0;
      for(int i = 0 ; i < stones.length ; ++i){
        if(jewels.contains(stones[i])){
          return_val += 1;
        }
      }
      return return_val;
  }
}
