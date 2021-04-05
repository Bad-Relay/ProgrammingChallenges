# uses the second array to remove elment from the first

def array_diff(a, b): #a is the base array and b is the array that subtracts
    for x in b: # for loop over the second array
        if x in a: #if the second array matches the first array remove all elments from it
            try:
                while True:
                    a.remove(x)
            except ValueError:
                pass
    return a

print(array_diff([1,2,2],[2])) # prints the result