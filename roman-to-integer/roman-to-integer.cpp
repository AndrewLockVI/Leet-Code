#include <string>
#include <iostream>
#include <vector>
#include <map>


//Leet Ratings
//       Speed  Memory
//Total  41ms   8.2MB    
//Beats  6.1%   40.21%
//



using namespace std;


int romanToInt(string s) {
    
    map <char, int> vals = {};
    vals.insert({'I', 1});
    vals.insert({'V', 5});
    vals.insert({'X', 10});
    vals.insert({'L', 50});
    vals.insert({'C', 100});
    vals.insert({'D', 500});
    vals.insert({'M', 1000});

    int return_val;
    int lv = 1000;
    int cv;
    for(int i = 0 ; i < s.length() ; ++i ){
        cv = vals.find(s[i])->second;
        if(lv < cv){
            return_val -= lv * 2;
        }
        return_val += cv;
        lv = cv;
    }
    return (return_val);
}


int main(){
    cout << romanToInt("MCMXCIV") << endl;
    return 0;
}

