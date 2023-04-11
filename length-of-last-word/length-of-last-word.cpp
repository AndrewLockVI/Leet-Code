#include <iostream>
#include <string>
using namespace std;


//       Speed  Memory
//Total  0ms    6.5MB    
//Beats  100%   92.69%
//




int lengthOfLastWord(string s) {
    int len = 0;

    //Trim from the end of the string any white space
    while(s[s.size() - 1] == ' '){
        s.pop_back();
    }
    for(int i = s.size() - 1; i >= 0 ; --i){

        if(s[i] != ' ' ){
            len += 1;
        }
        else{
            return len;
        }
    }

    return len;
}




int main(){
    cout << "Type words to find length of last word in list: ";
    string word = "";
    cin >> word;
    cout << lengthOfLastWord(word) << endl;
}
