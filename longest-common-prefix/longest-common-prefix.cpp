#include <iostream>
#include <vector>
using namespace std;

//Runtime: 3ms Beats: 87.33%
//Memory: 9.3MB Beats: 54.69%

string longestCommonPrefix(vector<string>& strs) {
    int shortest = strs[0].size();
    for(int i = 1 ; i < strs.size() ; ++i){
        if(strs[i].size() < shortest){
            shortest = strs[i].size();
        }
    }
    char current;
    string output = "";
    for(int i = 0 ; i < shortest ; ++i){
        current = strs[0][i];
        for(int x = 0 ; x < strs.size() ; ++x){
            if(strs[x][i] != current){
                return output;
            }
        }
        output += current;
    }
    return output;
}



int main(){
    vector<string> strings = {"Cat","Cap", "Cab"};
    cout << longestCommonPrefix(strings) << endl;
}
