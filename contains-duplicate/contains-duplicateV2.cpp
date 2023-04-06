#include <map>
#include <iostream>
#include <unordered_set>
#include <vector>

using namespace std;


//Leet Ratings
//       Speed  Memory
//Total  135ms   69.6MB    
//Beats  70.46%  39.69%

//I switched from using a map with keys and vals
//to using an unordered_list and it is way faster.
//It is almost 50ms faster than before!

bool containsDuplicate(vector<int>& nums) {
    
    unordered_set <int> us;

    bool dupe = false;
    for(int i = 0; i < nums.size() ; ++i){
        
        if(us.find(nums[i]) != us.end()){
            dupe = true;
            break;
        }

        us.insert(nums[i]);
    }

    return dupe;

}











int main(){
vector<int> input = {0 , 5 , 2, 4, 5 , 8};
cout << boolalpha << containsDuplicate(input) << endl;
}
