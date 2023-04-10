#include <iostream>
#include <map>
using namespace std;

//Leet Ratings
//       Speed  Memory
//Total  27ms    13MB    
//Beats  6.76%   6.11%
// Since I already know the refrence values I should use a vector of pairs because this method
// sorts them when entering the refrences in the map which is not necessary.



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
    auto last_it = symbols.rbegin();
    bool no_it = false;
    while(num > 0){
        for(auto it = symbols.rbegin() ; it != symbols.rend() ; ++it ){
            
            if(no_it){
            it = last_it;
            no_it = false;
            }

            if(num >= it->first){
                num -= it->first;
                numeral += it->second;
                no_it = true;
            }
            last_it = it;
        }
        
    }

    return numeral;
}


int main(){




    cout << intToRoman(134) << endl;
    return 0;

}
