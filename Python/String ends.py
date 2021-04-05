# This script checks to see if the string variable ends with the ending variable
def solution(string, ending):
    match = string[(len(string) - len(ending)):] #This makes a new string that cuts the starting string to match the ending string.
    if match == ending: # checks if the new shorter string equals the new matching string.
        return True
    else:
        return False

print(solution('abc', 'd'))