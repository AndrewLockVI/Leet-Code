//Find and return all possible permutations of a given set of integers
//To do this I used recursion to create a decision tree that splits off each time
//depending on how many integers in the list are unused.
//The time complexity of this code is O(n!)
//Time: 276ms Beats: 50%
//Memory: 142.7MB Beats: 33.33%

class Solution {
  List<List<int>> return_list = [];
  List<List<int>> permute(List<int> nums) {
      recurse(nums, []);
      return return_list;
  }
  void recurse(List<int> vals , List<int> current){
      if(vals.length == 1){
          current.add(vals[0]);
          return_list.add(current);
          return;
      }
      for(int i = 0 ; i < vals.length ; ++i){
          List<int> original = List.from(vals);
          List<int> curr = List.from(current);
          curr.add(original[i]);
          original.removeAt(i);
          recurse(original, curr);
      }
  }
}
