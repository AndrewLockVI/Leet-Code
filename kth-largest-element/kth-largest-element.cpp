#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
//Simple solution that has O(nlog(n)) complexity using built in sort.


//Leet Ratings
//       Speed  Memory
//Total  99ms   45.4MB    
//Beats  88.33% 73.57%

int findKthLargest(vector<int>& nums, int k) {
    sort(nums.begin(), nums.end());
    return nums[nums.size() - k];
}



int main(){
    vector<int> input_vec = {0, 1, 2, 4, 5, 6, 7,7 ,8, 9, 9, 9};
    cout << findKthLargest(input_vec, 3) << endl;
    return 0;
}
