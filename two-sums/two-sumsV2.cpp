#include <iostream>
#include <vector>

//Leet Ratings
//       Speed  Memory
//Total  79ms   10.2MB    
//Beats  50.84% 73.65%
//
//This is so fast because it does a reverse search and one of the test cases
//has a ton of numbers where the correct indexes are at the end.
using namespace std;

    vector<int> twoSum(vector<int>& nums, int target) {
        
        const int length = nums.size() - 1;
        for(int i = length; i >= 0 ; --i){
            for (int x = length; x >= 0 ; --x){
                if( nums[x] + nums[i] == target & x != i){
                    return{x,i};
                }
            }
        }
            return {};
    }


int main(){


    vector<int> sums = {3, 2, 4};    
    twoSum(sums, 6);
    cout << twoSum(sums, 6)[0] << twoSum(sums, 6) [1] << endl;

}

