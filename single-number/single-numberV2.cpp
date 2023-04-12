#include <iostream>
#include <vector>
#include <unordered_map>
#include <algorithm>
using namespace std;


// Time:    Memory:
// 20ms     16.9MB
// 64.90%   57.10%
// This is faster than using a map because the map requires a lot of checks
// to see if the map already has a value in it. Then it needs to iterate through the list
// again to find which value did not have a pairing.

//Another solution that involves sorting the list and then checking to
//see if the next value in the list is equal to the current value.
    int singleNumber(vector<int>& nums) {
        sort(nums.begin(), nums.end());
        for(int i = 0 ; i < nums.size() - 1 ; i += 2){
            if(nums[i] != nums[i + 1]){
                return nums[i];
            }
        }
        return nums[nums.size() - 1];
    }


int main(){
    //Ans should be 4
    vector <int> vec = {0 , 10, 0, 10, 2, 2, 3, 4, 3};
    cout << singleNumber(vec) << endl;

}
