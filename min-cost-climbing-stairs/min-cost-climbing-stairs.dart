//Find the minimum amount of energy required to make it up stairs.
//Each stair has a difficulty and each step can move up by one or two stairs.
//The time complexity of this code is O(n) where n is the number of values in the
//list.
//Time: 324ms Beats: 36.36%
//Memory: 175.9MB Beats: 9.9%

class Solution {
    Map<int, int> memo = {};
    int minCostClimbingStairs(List<int> cost) {
        int first = recurse(cost.sublist(1));
        int second = recurse(cost);
        if (first > second) {
            return second;
        }
        return first;
    }

    int recurse(List<int> cost) {
        if(memo[cost.length] != null){
            return(memo[cost.length] ?? 0);
        }
        if (cost.length == 0) {
            return 0;
        }
        if (cost.length == 1) {
            return cost[0];
        }
        int first = recurse(cost.sublist(1));
        int second = recurse(cost.sublist(2));
        if (first < second) {
            int return_val = first + cost[0];
            memo[cost.length] = return_val;
            return return_val;
        }
        int return_val = second + cost[0];
        memo[cost.length] = return_val;
        return return_val;
    }
}
