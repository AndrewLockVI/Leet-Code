//This solution to the problem is not
//strictly better than the other merely it uses
//BFS instead of DFS to search the islands.

class Solution {
    int numIslands(List < List < String >> grid) {
        Set < String > travelled = {};
        int count = 0;
        for (int i = 0; i < grid.length; ++i) {
            for (int x = 0; x < grid[i].length; ++x) {
                if (grid[i][x] == "0") {
                    continue;
                }
                if (travelled.contains(i.toString() + " " + x.toString())) {
                    continue;
                }
                traverse_island(grid, [i, x], travelled);
                count += 1;
            }
        }
        return count;
    }

    void traverse_island(List < List < String >> grid, List < int > position, Set < String > travelled) {
        List < List < int >> queue = [];
        queue.add(position);
        while (queue.length > 0) {
            int init_length = queue.length;
            for (int i = 0; i < init_length; ++i) {
                if (grid[queue[i][0]][queue[i][1]] == "0") {
                    continue;
                }
                String current_str = queue[i][0].toString() + " " + queue[i][1].toString();
                if (travelled.contains(current_str)) {
                    continue;
                }
                travelled.add(current_str);
                if (queue[i][0] > 0) {
                    queue.add([queue[i][0] - 1, queue[i][1]]);
                }
                if (queue[i][1] > 0) {
                    queue.add([queue[i][0], queue[i][1] - 1]);
                }
                if (queue[i][0] < grid.length - 1) {
                    queue.add([queue[i][0] + 1, queue[i][1]]);
                }
                if (queue[i][1] < grid[queue[i][0]].length - 1) {
                    queue.add([queue[i][0], queue[i][1] + 1]);
                }

            }
            queue = queue.sublist(init_length);
        }
    }
}
