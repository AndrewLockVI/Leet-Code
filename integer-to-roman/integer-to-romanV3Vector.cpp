#include <iostream>
#include <map>
using namespace std;

//Leet Ratings
//       Speed  Memory
//Total  0ms    6MB    
//Beats  100%   82.36%
//
//This is so much faster because I am using an array that does not have to 
//sort each added element which is O(log(n)) for each insert.


string intToRoman(int num) {
    pair<int, string> pairs[] = { 
        {1, "I"},
        {4, "IV"},
        {5, "V"},
        {9, "IX"},
        {10, "X"},
        {40, "XL"},
        {50, "L"},
        {90, "XC"},
        {100, "C"},
        {400, "CD"},
        {500, "D"},
        {900, "CM"},
        {1000, "M"} 
    };
    int list_size = sizeof(pairs) / sizeof(pairs[0]);
    string numeral = "";
    while(num > 0){
        for(int i = list_size - 1; i >= 0; --i){
            if(num >= pairs[i].first){
                num -= pairs[i].first;
                numeral += pairs[i].second;
                ++i;
            }
        }
    }
    return numeral;
}

int main(){
    cout << intToRoman(134) << endl;
    return 0;
}
