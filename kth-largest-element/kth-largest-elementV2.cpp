#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
//This is my solution using custom count sort to be faster than quicksort (default sort)


//Leet Ratings
//       Speed Memory
//Total  81ms  46.3MB    
//Beats  96.3% 53.25%


int findKthLargest(vector<int>& nums, int k) {
    int highest = nums[0];
    int lowest = nums[0];
    for(int i = 0 ; i < nums.size() ; ++i){
        if(nums[i] > highest){
            highest = nums[i];
        }
        else if(nums[i] < lowest){
            lowest = nums[i];
        }
    }
    int diff = (highest - lowest) + 1;
    vector<int> vec(diff , 0);
    for(int i = 0 ; i < nums.size() ; ++i){
        vec[nums[i] - lowest] =  vec[nums[i] - lowest] + 1;
    }
    int vals = 0;
    for(int i = vec.size() - 1; i >= 0 ;  --i){
        vals += vec[i];
        if(vals >= k){
            return i + lowest;
        }
    }
    return 0;
}






int main(){
    vector<int> input_vec = {0, 1, 2, 4, 5, 6, 7,7 ,8, 9, 9, 9};
    cout << findKthLargest(input_vec, 3) << endl;
    return 0;
}
