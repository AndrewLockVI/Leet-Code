#even odd tree

#is only true if even layers are ascending order and odd 
#and odd layers are even nums and descending order

#233ms beats 53.29%
#60.06MB Beats 5.76%

class Solution(object):
    def isEvenOddTree(self, root):
        lis = recurse(root, 0, [])
        isEven = False
        layer = 0
        for i in lis:
            isEven = not isEven
            index = 0
            for v in i:
                if isEven:
                    if v % 2 == 0:
                        return False
                    if index > 0:
                        if lis[layer][index - 1] >= v:
                            return False
                else:
                    if v % 2 != 0:
                        return False
                    if index > 0:
                        if lis[layer][index - 1] <= v:
                            return False
                index += 1
            layer += 1
        return True

def recurse(root, layer, lis):
    if len(lis) <= layer:
        lis.append([])
    lis[layer].append(root.val)
    if root.left is not None:
        recurse(root.left, layer + 1, lis)
    if root.right is not None:
        recurse(root.right, layer + 1, lis)
    return lis

