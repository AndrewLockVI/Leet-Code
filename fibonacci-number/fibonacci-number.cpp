//Find the nth value in the fibonacci number sequence.
//I did this recursively with a time complexity of O(2^n).
//Time: 11ms Beats: 47.1%
//Memory: 5.9MB Beats: 94.32%
class Solution {
public:
    int fib(int n) {
        if(n <= 1){
            return n;
        }
        return fib(n - 1) + fib(n - 2);
    }
};
