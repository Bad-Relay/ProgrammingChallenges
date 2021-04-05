#A script that only sorts the odd numbers in an array while keeping the even one the same

def sort_array(source_array):
    odd = [] #empty list for the odd numbers
    result = []
    i = 0 # a variable to keep track of number of odd numbers in the list
    for x in source_array: #loop that gets the odd numbers in the array and adds them to the odd array
        if x % 2:
            odd.append(x)
    odd.sort()
    for x in source_array: # goes though the array and replaces the odd numbers with the sorted odd numbers
        if x % 2:
            result.append(odd[i])
            i = i + 1 #moves next in the odd list
        else:
            result.append(x)
    return result

print(sort_array([5, 3, 2, 8, 1, 4]))