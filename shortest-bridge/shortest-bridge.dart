//Given a matrix of 1's and 0's where 1's are land and 0's are water
//find the shortest bridge possible to connect the two islands in the matrix together.
//To solve this I first iterated through the matrix and found the two islands. Then using
//DFS I mapped them out and placed them in their respective matricies which store the
//positions of each 1. I then used BFS on the first island to expand out from it to find the 
//shortest possible distance from the first island to the second and returned that value.
//Time: 504ms Beats: 100%
//Memory: 176.4MB Beats: 100%
class Solution {
  Set<String> found = {};
  Set<String> second_island_set = {};
  Set<String> searched = {};
  int shortestBridge(List<List<int>> grid) {

      List<List<int>> first_island = [];
      List<List<int>> second_island = [];
      for(int i = 0 ; i < grid.length ; ++i){
          for(int x = 0 ; x < grid[i].length ; ++x){
              if(grid[i][x] == 1 && !(found.contains(i.toString() + " " + x.toString()))){
                  if(first_island.length == 0){
                    explore(grid, [i, x], first_island);
                  }
                  else{
                    explore(grid, [i, x], second_island);
                    i = 10000000;
                    break;
                  }
              }
          }
      }
      List<List<int>> queue = [];
      //Iterate through the first list to initialize the BFS queue.
      for(int i = 0 ; i < first_island.length ; ++i){
          queue.add(first_island[i]);
      }
      //Create map of second island for faster searching
      for(int i = 0 ; i < second_island.length ; ++i){
          second_island_set.add(second_island[i][0].toString() + " " + second_island[i][1].toString());
      }

      bool done = false;
      int iteration = 0;

      while(queue.length != 0 && done == false){
          int init_queue = queue.length;
          for(int i = 0 ; i < init_queue ; ++i){
            List<int> current = queue[i];
            String curr_str = current[0].toString() + " " + current[1].toString();
            if(searched.contains(curr_str)){
                continue;
            }
            searched.add(curr_str);
            String current_str = current[0].toString() + " " + current[1].toString();
            if(second_island_set.contains(current[0].toString() + " " + current[1].toString())){
                done = true;
                break;
            }
            if(current[0] > 0){
                queue.add([current[0] - 1, current[1]]);
            }
            if(current[1] > 0){
                queue.add([current[0], current[1] - 1]);
            }
            if(current[0] < grid.length - 1){
                queue.add([current[0] + 1, current[1]]);
            }
            if(current[1] < grid[current[0]].length - 1){
                queue.add([current[0], current[1] + 1]);
            }
          }
          if(done != true){
            queue = queue.sublist(init_queue);
            iteration += 1;
          }
      }
      return iteration - 1;

  }

  //DFS to explore the entire island that is at the position[0][1]. This places the island positions in 
  //the inputted island matrix and adds the values to the found set to help not search the same island
  //multiple times.
  void explore(List<List<int>> grid , List<int> position, List<List<int>> island){
      int currentx = position[0];
      int currenty = position[1];
      if(grid[currentx][currenty] != 1){
          return;
      }
      String position_str = currentx.toString() + " " + currenty.toString();
      if(found.contains(position_str)){
          return;
      }
      found.add(position_str);
      island.add([currentx , currenty]);
      if(currentx > 0){
          explore(grid, [currentx - 1, currenty], island);
      }
      if(currenty > 0){
          explore(grid, [currentx, currenty - 1], island);
      }
      if(currentx < grid.length - 1){
          explore(grid, [currentx + 1, currenty], island);
      }
      if(currenty < grid[currentx].length - 1){
          explore(grid, [currentx, currenty + 1], island);
      }

  }



}
