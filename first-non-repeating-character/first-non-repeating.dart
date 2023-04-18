import 'dart:io';
//This is a leetcode style question, but not from leetcode.
//The idea is to find the first character of the input string that
//does not repeat in the string. This is the optimized way using maps
//which is linear time, but the simple solution would be brute force checking
//every single charcter which would be O(n^2);
void main(){
    stdout.write("Enter text to find the first non-repeating character: ");
    String s = stdin.readLineSync() ?? "N/A";
    Map<String,int> vals = {};
    for(int i = 0 ; i < s.length; ++i){
        vals[s[i]] = (vals[s[i]] ?? 0) + 1;
    }
    for(int i = 0 ; i < s.length ; ++i){
            if(vals[s[i]] == 1){
                print(s[i] + " is the first character that does not repeat in the string.");
                break;
            }
        }
    }
