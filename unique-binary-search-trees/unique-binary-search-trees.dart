//Given a number n assume that you have n
//numbers from 1 to n return the total number
//of unique trees that can be created from the list.

//To solve this you need to make every node in the current
//list the root. Then from there recurse the left and right sides
//based on the values greater than and less than the given node.
//From here multiply the left and right options together because
//for each version permutation of the left subtree if you change one on
//the right then there is an entire new set of permutations for the tree.


class Solution {
  int numTrees(int n) {
    List<int> val_list = [];
    for(int i = 1 ; i <= n ; ++i){
        val_list.add(i);
    }
    return trees(val_list);
  }

  int trees(List<int> vals){
      if(vals.length == 1){
          return 1;
      }

      int current_val = 0;
      for(int i = 0 ; i < vals.length ; ++i){
          List<int> left = vals.sublist(0,i);
          List<int> right = vals.sublist(i + 1);
          current_val += trees(left);
          current_val += trees(right);
      }
      return current_val;
  }
}
