#This script takes the 5 numbers and gets the max sum and the min sum of the 5 numbers.

def miniMaxSum(arr):
    max = sorted(arr)
    max.pop(0)
    min = sorted(arr)
    min.pop(-1)
    return sum(min), sum(max)
print(miniMaxSum([1,2,3,4,5]))