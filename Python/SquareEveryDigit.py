#This script takes a int and returns the square root of each digit.
def square_digits(num):
    start =  list(str(num)) #Turns the int into a string list
    result = []
    for x in start:
        result.append(str(int(x) * int(x))) #adds the square root of the digit to the result string
    result_one = "".join(result) #converts the list into one string

    return int(result_one)

print(square_digits(339))