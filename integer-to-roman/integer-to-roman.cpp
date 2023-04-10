#include <iostream>
#include <map>
using namespace std;

//Leet Ratings
//       Speed  Memory
//Total  32ms   12.9MB    
//Beats  5.2%   7.2%
//


string intToRoman(int num) {
    //Create hashmap
    map <int ,string> symbols;
    symbols.insert({1, "I"});
    symbols.insert({4, "IV"});
    symbols.insert({5, "V"});
    symbols.insert({9, "IX"});
    symbols.insert({10, "X"});
    symbols.insert({40, "XL"});
    symbols.insert({50, "L"});
    symbols.insert({90, "XC"});
    symbols.insert({100, "C"});
    symbols.insert({400, "CD"});
    symbols.insert({500, "D"});
    symbols.insert({900, "CM"});
    symbols.insert({1000, "M"});
    
    string numeral = "";
    while(num > 0){
        for(auto it = symbols.rbegin() ; it != symbols.rend() ; ++it ){
            if(num >= it->first){
                num -= it->first;
                numeral += it->second;
                //This is inefficient because it needs to reloop each time it finds a val to make sure it does not iterate past a repeated value.
                break;
            }
        }   
    }
    return numeral;
}




int main(){




    cout << intToRoman(134) << endl;
    return 0;

}
