//Given a set of candidates return all unique combinations
//of candidates that add up to the target number.
//To do this I used recursion, dp, and memoization.
//I first checked to see if a certain set of numbers had already
//been checked. If yes then the branch ended if not then I added 
//it to my memoized list and continued on. This ensures that no duplicates
//will be used. 
//Time: 425ms Beats: 16.67%
//Memory: 175.9MB Beats: 33.33%
class Solution {
  List<List<int>> combinationSum2(List<int> candidates, int target) {
      return (allCombinations(candidates, target, [], {}));
  }
  List<List<int>> allCombinations(List<int> candidates, int target , List<int> previous, Set<String> memo){
    String current_str = "";
    previous.sort();
    for(int i = 0 ; i < previous.length ; ++i){
        current_str += previous[i].toString() + " ";
    }
    if(memo.contains(current_str)){
        return [];
    }
    memo.add(current_str);
    if(target == 0){
        return [previous];
    }
    if(target < 0){
        return [];
    }
    List<List<int>> return_list = [];
    for(int i = 0 ; i < candidates.length ; ++i){
        List<int> prev = List.from(previous);
        prev.add(candidates[i]);
        List<List<int>> combo = allCombinations(candidates.sublist(i + 1) , target - candidates[i] , prev, memo);
        for(int i = 0 ; i < combo.length ; ++i){
            return_list.add(combo[i]);
        }
    }
    return return_list;
  }
}
