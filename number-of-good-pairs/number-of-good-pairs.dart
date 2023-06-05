//Given a list of numbers return the number of good pairs
//that can be returned. A good pair is there n[i] == n[j] and
//i < j. 

//To solve this I created a hashmap with all of the values and
//the index they occured at. Then from there I iterated through
//the map and added the total number of pairs that could be created 
//from each number.

//The time complexity of this is O(n).

//Time: 219ms Beats: 100%
//Memory: 144.2MB Beats: 8.57%

class Solution {
  int numIdenticalPairs(List<int> nums) {
      Map<int,List<int>> vals = {};
      int count = 0;
      for(int i in nums){
          List<int> current = (vals[i] ?? []);
          current.add(count);
          vals[i] = current;
          count += 1;
      }
      int options = 0;
      for(var entry in vals.entries){
        List<int> curr_list = entry.value;
        options += sumAll(curr_list.length - 1); 
      }
      return options;
  }
  int sumAll(int original){
    if(original <= 1){
      return original;
    }
    int current = sumAll(original - 1);
    current = current + original;
    return current;
  }
}
