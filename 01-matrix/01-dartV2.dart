//This solution is a bit faster as it uses BFS on all of the
//tiles in the matrix to find the nearest 0. It also uses
//memoization, and a more optimized implementation of a queue.
//Still it is too slow because there is one matrix that has a single zero
//in the bottom right corner which means each node has to search the entire list to 
//find it. To finally complete this I will need to do bfs using each of the 0's.

class Solution {
  List<List<int>> updateMatrix(List<List<int>> mat) {
      List<List<int>> answers = [];
      for(int i = 0 ; i < mat.length ; ++i){
          answers.add([]);
          for(int x = 0 ; x < mat[i].length ; ++x){
              answers[i].add(-1);
          }
      }

      for(int i = 0 ; i < answers.length ; ++i){
          for(int x = 0 ; x < answers[0].length ; ++x){
              answers[i][x] = find_nearest([i,x], mat, answers);
          }
      }
      return answers;
  }
  
  int find_nearest(List<int> find, List<List<int>> matrix, List<List<int>> memo){

      List<List<int>> to_visit = [];
      to_visit.add(find);
      Set<String> visited = {};
      int itr = 0;
      int itr_stop = -1;

      while(true){
          int init_length = to_visit.length;
          if(itr_stop != -1 && itr >= itr_stop){
              return itr_stop;
          }
          for(int i = 0 ; i < init_length ; ++i){
              List<int> current = to_visit[i];
              if(visited.contains(current[0].toString() + " " + current[1].toString())){
                  continue;
              }
              visited.add(current[0].toString() + " " + current[1].toString());
              int current_mem_val = memo[current[0]][current[1]];
              if(current_mem_val != -1){
                  if(itr_stop == -1 || itr_stop > itr + current_mem_val){
                      itr_stop = itr + current_mem_val;
                  }
                  continue;
              }


              if(matrix[current[0]][current[1]] == 0){
                  return itr;
              }
              if(current[0] > 0){
                  to_visit.add([current[0] -1, current[1]]);
              }
              if(current[1] > 0){
                  to_visit.add([current[0], current[1] - 1]);
              }
              if(current[0] < matrix.length - 1){
                  to_visit.add([current[0] + 1, current[1]]);

              }
              if(current[1] < matrix[0].length - 1){
                  to_visit.add([current[0], current[1] + 1]);
              }
          }
          to_visit = to_visit.sublist(init_length);
          itr += 1;
      }
      return 404;
  }

}
