//Recurses through the number of possible ways one could climb a flight of
//stairs if they can either step up by one or two each time.
//TLE in Leetcode which is dumb because this is the most intuitive way to do it...
//Time complexity of this is O(2^n) because each element added creates two more branches.
//to conceptualize it think of a BST where each level has *2 more nodes.
import 'dart:io';

void main(){
    stdout.write("Enter a number: ");
    int val = int.parse(stdin.readLineSync()!);
    Solution sol = new Solution();
    print("There are " + sol.climbStairs(val).toString() + " ways to traverse those steps");
}

class Solution {

  int val = 0;  
  int climbStairs(int n) {
      recurse(0 , n);
      return val;
  }
    void recurse(int current_stair, int n){
        if(current_stair <= n - 2 ){
            recurse(current_stair + 1, n);
            recurse(current_stair + 2, n);
        }
        else if(current_stair <= n - 1){
            recurse(current_stair + 1 , n);
        }
        else if(current_stair == n){
            val += 1;
            
        }
    }

}
