//Given a word search through the board and return true
//if you can make the word from the board by moving only left
//right up and down without reusing the same tiles. 
//I used recursion and backtracking to check all possible routes
//to see if any tiles with the same starting tile as word
//could be used to make the word. I also implemented a check at the start
//to iterate through the matrix to verify that at least all of the characters being
//looked for exist in the matrix before starting the search.
//Time: 2869ms Beats: 50%
//Memory: 185.2MB Beats: 50%
class Solution {
  bool exist(List<List<String>> board, String word) {
      Set<String> letters = {};
      for(int i = 0 ; i < word.length ; ++i){
          letters.add(word[i]);
      }
      for(int i = 0 ; i < board.length ; ++i){
        for(int x = 0 ; x < board[i].length ; ++x){
            letters.remove(board[i][x]);
        }
      }
      if(letters.length != 0){
          return false;
      }
      for(int i = 0 ; i < board.length ; ++i){
          for(int x = 0 ; x < board[i].length ; ++x){
            if(board[i][x] == word[0]){
                if(find(board,word, [i,x] , {})){
                    return true;
                }
            }
          }
      }
      return false;
  }

  bool find(List<List<String>> board , String word , List<int> current_position, Set<String> visited){
      String curr_str = current_position[0].toString() + " " + current_position[1].toString();
      if(visited.contains(curr_str)){
          return false;
      }
      visited.add(curr_str);
      if(word.length == 0 || (word.length == 1 && board[current_position[0]][current_position[1]] == word)){
          return true;
      }
      if(word[0] != board[current_position[0]][current_position[1]]){
          return false;
      }
      int curry = current_position[1];
      int currx = current_position[0];

      bool left = false;
      bool right = false;
      bool down = false;
      bool up = false;

      if(curry != 0){
          up = find(board , word.substring(1)  , [currx, curry - 1], Set.from(visited));
      }
      if(up){
          return true;
      }
      if(currx != 0){
          left = find(board , word.substring(1)  , [currx - 1, curry], Set.from(visited));
      }
      if(left){
          return true;
      }
      if(currx != board.length - 1){
          right = find(board , word.substring(1) , [currx + 1, curry], Set.from(visited));
      }
      if(right){
          return true;
      }
      if(curry != board[0].length - 1){
          down = find(board , word.substring(1)  , [currx, curry + 1], Set.from(visited));
      }
      if(down){
          return true;
      }
 
      return false;
  }
}
