//Given a list of values return all possible combinations
//of the values that add up to the target.
//To do this I used memoization, dp, and recursion
//to search for each possible combination without repeating computations
//Time: 563ms Beats: 5.55%
//Memory: 177.3MB Beats: 5.56%
class Solution {
  List<List<int>> return_vals = [];
  Set<String> checked = {};
  List<List<int>> combinationSum(List<int> candidates, int target) {
    find_combos(candidates, target, []);
    return return_vals;
  }

  void find_combos(List<int> canidates , int target, List<int> tried){
    String check_str = "";
    for(int i = 0 ; i < tried.length ; ++i){
      check_str += tried[i].toString() + " ";
    }
    if(checked.contains(check_str)){
      return;
    }
    checked.add(check_str);
    if(target < 0){
      return;
    }
    if(target == 0){
      return_vals.add(tried);
    }
    for(int i = 0 ; i < canidates.length ; ++i){
      List<int> new_tried = List.from(tried);
      new_tried.add(canidates[i]);
      new_tried.sort();
      find_combos(canidates , target - canidates[i] , new_tried);
    }
    return;
  }
}
