//Starting from the first index remove every other element. Then
//sweep back the other way from right to left until there is only
//one value remaining. Return the remaining value. 
//The time complexity of this code is O(n^2) where n is the length of the list
//it is this slow because the a memcopy is required to remove a specific index from a list (O(n) time)
//This code is too slow for leet code, but it is the intuitive solution to the problem.

class Solution {
  int lastRemaining(int n) {
    List<int> vals = [];
    for(int i = 1 ; i <= n ; ++i){
      vals.add(i);
    }
    while(vals.length > 1){
      for(int i = 0 ; i < vals.length ; i += 1){
        vals.removeAt(i);
      }
      if(vals.length == 1){
        break;
      }
      for(int i = vals.length - 1 ; i >= 0; i -= 2){
        vals.removeAt(i);
      }
    }
    return vals[0];
  }
}
