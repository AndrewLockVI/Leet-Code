#include <iostream>
#include <vector>
using namespace std;

//Use a binary search to find where the next value would be inserted and return that index.
//Speed: 3ms Beats: 88.82%
//Memory: 9.7MB Beats: 80.21%
int searchInsert(vector<int>& nums, int target) {
    

    if(target > nums[nums.size() - 1]){
        return nums.size();
    }
    if(target <= nums[0]){
        return 0;
    }

    int upper_bound = nums.size() - 1;
    int lower_bound = 0;
    while(true){
        int curr_val = nums[(upper_bound + lower_bound) / 2];
        if(target == curr_val){
            return (upper_bound + lower_bound) / 2;
        }
        else if(target > curr_val){
            lower_bound = (upper_bound + lower_bound) / 2;
        }
        else if(target < curr_val){
            upper_bound = (upper_bound + lower_bound) / 2;
        }
        
        if(upper_bound == lower_bound + 1){
            return upper_bound;
        }
    }
    return 0;

}

int main(){
    vector<int> vec = {0 , 1 , 3, 4 ,5 ,6 ,7 ,8 , 8 , 8 , 100};
    searchInsert(vec, 4);
}
