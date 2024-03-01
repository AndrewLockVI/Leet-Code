#Not great solution

#5.93% 93ms
#75.75% 16.56MB

class Solution:
    def maximumOddBinaryNumber(self, s: str) -> str:
        ones = s.count('1')
        lis = []
        for i in range(ones):
            lis.append('1')
        for i in range(len(s) - ones):
            lis.append('0')
        st = toStr(lis)
        val = int(st, 2)
        while val % 2 == 0:
            newStr = moveRightMost(lis)
            st = toStr(lis)
            val = int(st, 2)
        return st

def toStr(lis):
    st = ''
    for i in lis:
        st += i
    return st

def moveRightMost(s):
    count = len(s) - 1
    for i in reversed(s):
        if i == '0' and s[count - 1] == '1':
            s[count - 1] = '0'
            s[count] = '1'
            return s
        count -= 1
    return s
