//Take in an input of m and n where m is the height of the matrix and 
//n is the width of the matrix. Then from there use a singly linked list
//and place the node's associated values into the matrix following a spiral pattern.
//All non-filled spaces should be -1.
//The time complexity of this code is O(m * n).
//Time: 563ms Beats: 100%
//Memory: 215.3MB Beats: 100%
//Not enough submissions to show metrics.

/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  List<List<int>> spiralMatrix(int m, int n, ListNode? head) {
      int top_margin = 0;
      int right_margin = n - 1;
      int left_margin = 0;
      int bottom_margin = m-1;
      List<List<int>> return_list = [];
      for(int i = 0 ; i < m; ++i){
          return_list.add([]);
          for(int x = 0 ; x < n ; ++x){
              return_list[return_list.length - 1].add(-1);
          }
      }
      while(head != null){
          for(int i = left_margin ; i <= right_margin ; ++i){
              return_list[top_margin][i] = (head?.val ?? return_list[top_margin][i]);
              head = head?.next;
          }
          top_margin += 1;
          for(int i = top_margin; i <= bottom_margin ; ++i){
              return_list[i][right_margin] = (head?.val ?? return_list[i][right_margin]);
              head = head?.next;
          }
          right_margin-=1;

          for(int i = right_margin ; i >= left_margin ; --i){
              return_list[bottom_margin][i] = (head?.val ?? return_list[bottom_margin][i]);
              head = head?.next;
          }
          bottom_margin-=1;
          for(int i = bottom_margin ; i >= top_margin ; --i){
              return_list[i][left_margin] = (head?.val ?? return_list[i][left_margin]);
              head = head?.next;
          }
          left_margin += 1;
      }
      return return_list;
  }
}
