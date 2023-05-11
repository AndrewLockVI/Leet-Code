//Given a list of edges all of which are connected to the center
//return the value at the center.
//The time complexity of my code is O(1).
//Time: 384ms Beats: 60%
//Memory: 213MB Beats: 60%
class Solution {
  int findCenter(List<List<int>> edges) {

      int opt1 = edges[0][0];
      int opt2 = edges[0][1];
      if(opt1 == edges[1][0] || opt1 == edges[1][1] ){
        return opt1;
      }
      return opt2;
  }
}
