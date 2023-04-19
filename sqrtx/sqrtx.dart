//Find the square root without the builtin sqrt() function.
//This is done by checking if the value selected squared is greater than
//the val if it is then you subtract one and return the value. This is
//done because leetcode wants the value that is the floor so if you have 2.9 that would need to return 2.
//Time complexity = O(sqrt(n))
//Time: 317ms Beats: 70.83%
//Memory: 143.2MB Beats: 36.11%

void main(){
    Solution sol = new Solution();
    print(sol.mySqrt(226332020323023));
}


class Solution {
  int mySqrt(int x) {
      int count = 0;
      while(true){
          if(x < count * count){
              return count-1;
          }
          count += 1;
      }
  }
}
