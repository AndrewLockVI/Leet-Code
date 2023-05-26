//Given an input where n is the number of values and 
//k is the length of each combination return all possible combinations.
//My solution iterates through the list and returns
//each possible combination each time it iterates the first
//index of the list moves one to the right as to not return both
//1,2 and 2,1 which would happen if you returned all permutations
//of the second index.
//Time: 279ms Beats: 83.33%
//Memory: 155.6MB Beats: 30.56%

class Solution {
  List<List<int>> combine(int n, int k) {
      List<int> values = [];
      for(int i = 1 ; i < n + 1; ++i){
          values.add(i);
      }
      return allCombinations(k, values, []);
  }
  List<List<int>> allCombinations(int length , List<int> options, List<int> current){
      if(length == current.length){
          return [current];
      }
      List<List<int>> return_list = [];
      for(int i = 0; i <  options.length ; ++i){
          List<int> new_curr = List.from(current);
          List<int> opts = List.from(options);
          opts = opts.sublist(i + 1);
          new_curr.add(options[i]);
          List<List<int>> ret = allCombinations(length , opts, new_curr);
          for(int i = 0 ; i < ret.length ; ++i){
              return_list.add(ret[i]);
          }
      }
      return return_list;
  }
}
