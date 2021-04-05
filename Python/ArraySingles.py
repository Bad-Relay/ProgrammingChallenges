
#finds the unique values in array and adds them

Array = [5, 10, 19, 13, 10, 13]
def single(arr):
    x = 0
    result = 0
    for x in Array:
        if Array.count(x) == 1:
            result = x + result
    else:
        return result
print(single(Array))