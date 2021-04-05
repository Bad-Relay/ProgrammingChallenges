# This script gets the power of n with the index of n. If the index is out of range return -1
def index(array, n): #Takes the array and the index/power for the array
    try:
        return array[n] ** n #takes the index of n and gets the power of n
    except:
        return -1 # If the range is out of bounds or the script fails return -1
print(index([1, 2],2))