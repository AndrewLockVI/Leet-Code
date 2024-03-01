
#This is the right way. Kinda wasn't thinking that the last
#bit being a one means the number is odd and that is the only
#way....

#30ms 93.00%
#16.56MB 75.75%
class Solution:

    def maximumOddBinaryNumber(self, s: str) -> str:
        ones = s.count("1")
        strReturn = ""
        for i in range(ones - 1):
            strReturn += "1"
        for i in range(len(s) - ones):
            strReturn += "0"
        strReturn += "1"
        return strReturn
