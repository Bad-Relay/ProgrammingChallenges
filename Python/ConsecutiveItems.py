# This script searches a array for two numbers and checks to see if they are consecutive

def consecutive(arr, a, b): #first element is the array followed by two numbers
    for x, i in enumerate(arr):  # turns the array into a enumerate object. x is the object and i is the current element
        if i == a: #checks if the first element is match with the a variable
            if x != 0 and x != (len(arr)-1): # check if the match is not the first or last element in the array
                previous = arr[x - 1] # variable for the last used element
                new = arr[x + 1] # variable for next element
                if previous == b:
                    return True #if last is a match return True
                elif new == b:
                    return True # if next is a match return True
            elif x == 0: # if the element is first only search for the next element
                new = arr[x + 1]
                if new == b:
                    return True
            elif x == (len(arr)-1): # if the element is first only search for the previous element
                previous = arr[x - 1]
                if previous == b:
                    return True

    else:
        return False # if the variable a is not in the list return false



print(consecutive([1, 6, 9, -3, 4, -78, 0] , -78 , 0)) #prints the output of the consecutive function



