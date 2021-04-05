# This script takes an input of a integer and reverse it
def reverse(n):
    reverse = 0

    while (n != 0):
        lastDigit = n % 10 #Gets the last digit
        reverse = reverse * 10 + lastDigit # appends the last digit to the reverse number
        n = n // 10 # removes the last digit
    return reverse

numberinput = int(input("Enter the integer number: "))
print(reverse(numberinput))