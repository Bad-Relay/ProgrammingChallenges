#This script will remove all the text  inside a parentheses
def remove_parentheses(s): #takes a string arugment
    end = ""
    inside = 0 # needs to be a number for multiple parentheses
    for x in s: #runs each letter in a string
        if x == "(":
            inside = inside + 1
            pass
        elif inside == 0:
            end += x #if not in a parentheses add to the end string
        elif x == ")":
            inside = inside - 1
    return end

print(remove_parentheses("this is a string (remove all (test multiple parentheses) inside this) end of string"))