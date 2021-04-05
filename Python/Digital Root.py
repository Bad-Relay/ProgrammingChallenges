# This script get the digital root root of a number. It will keep adding number intill it gets a single digit.
def digital_root(n):
    result = 0
    test = n
    while test >= 10: # a while loop that runs till the test variable is only one digit
        for i in list(str(test)): # a for loop that runs for each digit in a int
            result = int(i) + result
        else:
            test = result
            result = 0

    return test
print(digital_root(942))