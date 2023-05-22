//Find the k most freqently used elements in the nums list then
//return them as a list. To do this I placed all the values
//into a map and then associated an integer with them to track the number
//of occurences each one had. Then from there I went through the map k times
//picking out the one with the most usages and placing it in the return list.
//Time: 350ms Beats: 27.8%
//Memory: 176.1MB Beats: 6.25%

class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
      Map<int,int> vals = {};
      List<int> return_list = [];
      for(int i = 0 ; i < nums.length ; ++i){
          vals[nums[i]] = (vals[nums[i]] ?? 0) + 1;
      }
      for(int i = 0 ; i < k ; ++i){
        int current_max = 0;
        int current_val = 0;
        for(var entry in vals.entries){
          if(entry.value > current_max){
            current_max = entry.value;
            current_val = entry.key;
          }
        }
        return_list.add(current_val);
        vals.remove(current_val);
      }
      return return_list;
  }
}
