//Added memoization which stops me from getting a tle.
//Time: 290ms Beats: 100%
//Memory: 140.1MB Beats: 100%

class Solution {
  int numTrees(int n) {
    List<int> val_list = [];
    for(int i = 1 ; i <= n ; ++i){
        val_list.add(i);
    }
    return trees(val_list, {});
  }

int trees(List<int> vals, Map<int, int> memo){
  if(memo.containsKey(vals.length)){
    return (memo[vals.length] ?? 0);
  }
  if(vals.length == 0){
    return 1;
  }

  int current_val = 0;
  for(int i = 0 ; i < vals.length ; ++i){
    List<int> left = vals.sublist(0,i);
    List<int> right = vals.sublist(i + 1);
    current_val += trees(left, memo) * trees(right,memo);
  }
  memo[vals.length] = current_val;
  return current_val;
}

}
