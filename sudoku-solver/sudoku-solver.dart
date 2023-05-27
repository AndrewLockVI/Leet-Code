//Given a matrix that is a sudoku problem that is possible to solve
//return the matrix of the completed sudoku. For each spot
//I checked all other values in the same row and column as well as same square
//and for each value in them assuimng they are not . (which is the value for not set)
//I removed them from the list of options (unused set) then for each value still remaining
//I called the function again substituting that value for the current. If the current
//position is 9,10 that means the function reached the end and thus has a completed sudoku puzzle
//so from there I returned the complete board. Otherwise I return [] meaning that the current
//permutation of the board is not completable given the previous values that have been used.
//Time: 357ms Beats: 13.33%
//Memory: 175.9MB Beats: 6.67%

class Solution {
  void solveSudoku(List<List<String>> board) {
      List<List<String>> board2 = solve(board, [0,0]);
      for(int i = 0 ; i < board2.length ; ++i){
          board[i] = List.from(board2[i]);
      }
  }
  List<List<String>> solve(List<List<String>> board, List<int> current_pos){
      if(current_pos[1] == 8 && current_pos[0] == 9){
          return board;
      }
      if(current_pos[0] == 9){
          current_pos[0] = 0;
          current_pos[1] = current_pos[1] + 1;
      }
      if(board[current_pos[0]][current_pos[1]] != '.'){
         List<List<String>> curr = solve(board, [current_pos[0] + 1 , current_pos[1]]);
         if(curr.length != 0){
             return curr;
         }
         else{
             return [];
         }
      }
      Set<String> unused = {'1','2','3','4','5','6','7','8','9'};
      int currentx = current_pos[0];
      int currenty = current_pos[1];
      //horz search
      for(int i = 0 ; i < 9 ; ++i){
          if(board[currentx][i] != '.'){
              unused.remove(board[currentx][i]);
          }
      }
      //vert search
      for(int x = 0 ; x < 9; ++x){
          if(board[x][currenty] != '.'){
              unused.remove(board[x][currenty]);
          }
      }
      //check same square
      int start_row = ((currentx / 3).toInt() * 3).toInt();
      int start_val = ((currenty/3).toInt() * 3).toInt();
      for(int i = start_row ; i <= start_row + 2 ; ++i){
          for(int x = start_val ; x <= start_val + 2; ++x ){
              unused.remove(board[i][x]);
          }
      }
      for(var num in unused){
          List<List<String>> new_board = [];
          for(int i = 0 ; i < board.length ; ++i){
              new_board.add(List.from(board[i]));
          }
          new_board[currentx][currenty] = num;
          List<List<String>> curr = solve(new_board, [currentx + 1 , currenty]);
          if(curr.length != 0){
              return curr;
          }
      }
      return [];
  }
}
