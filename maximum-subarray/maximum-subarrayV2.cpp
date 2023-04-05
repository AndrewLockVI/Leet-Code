#include <vector>
#include <iostream>
using namespace std;


//Leet Ratings
//       Speed  Memory
//Total  121ms  67.8MB    
//Beats  46.20% 63.61%
//
//Optimized to start iterating once a negative is reached in the prior
//set of iterations.


int maxSubArray(vector<int>& nums) {

    int size = nums.size();
    int i = 0;
    long int current_val = 0;
    long int highest = nums[0];
    while(i < size){
        current_val = nums[i];

        //This is necessary in case the final value of a list is the highest value.
        if(current_val > highest){
            highest = current_val;
        }
        int x = i + 1;
        while(x < size & current_val > 0){
            current_val += nums[x];
            if(current_val > highest){
                highest = current_val;
            }
            x += 1;
        }
        if(x == size){
            break;
        }
        if(current_val < 0){
            i = x;
        }
        else{
            i += 1;
        }

        current_val = 0;
    }
    return highest;
} 

int main(){
        vector<int> vector = {10, -1, -10, 32, 3, -3};
        cout << maxSubArray(vector) << endl;
}
