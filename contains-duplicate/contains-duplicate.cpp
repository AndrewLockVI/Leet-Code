#include <map>
#include <iostream>
#include <vector>
using namespace std;


//Leet Ratings
//       Speed  Memory
//Total  186ms    70.8MB    
//Beats  23.71%   29.11%

// I chose to use maps because I did not know
// that unordered lists exist. I will fix and
// see the difference. I suspect it will be
// margianlly faster and use far less memory.


bool containsDuplicate(vector<int>& nums) {
    map <int, int> maps;
    bool dupe = false;
    for(int i = 0; i < nums.size() ; ++i){
        if(maps.find(nums[i])->second){
            dupe = true;
            break;
        }
        maps.insert(pair(nums[i] , 1));
    }
    return dupe;
}

int main(){
vector<int> input = {0 , 5 , 2, 4, 5 , 8};
cout << boolalpha << containsDuplicate(input) << endl;
}
