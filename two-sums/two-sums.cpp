#include <iostream>
#include <vector>

//I hate that I have to add this line
using namespace std;

//Leet Ratings
//       Speed  Memory
//Total  675ms  10.2MB    
//Beats  6.87% 73.65%
//
//This is so slow because it, among other things, does not do a reverse search and one of the test cases
//has a ton of numbers where the correct indexes are at the end.



vector<int> twoSum(vector<int>& nums, int target) {
        
        int first = 0;
        int second = 0;
        bool done = false;
        int length = nums.size();
        for(int i = 0 ; i < length ;  ++i){
            if(done == true){
              break;
            }
            for (int x = 0; x < length ; ++x){


                if( nums[x] + nums[i] == target & x != i){
                    done = true;
                    first = x;
                    second = i;
                    
                    break;
                }


            }



        }

        vector<int> vals = {first , second};
        return (vals);
    }


int main(){


    vector<int> sums = {3, 2, 4};    
    twoSum(sums, 6);
    cout << twoSum(sums, 6)[0] << twoSum(sums, 6) [1] << endl;

}
