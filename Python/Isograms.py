# A script that return True or False depending if the script is a Isogram (unique letters)
def is_isogram(string):
    for x in string.lower(): #runs a for loop in a lower case version of the string
        if string.lower().count(x) != 1: #if any of the elemnts of the string are not unique return false
            return False
    return True

print(is_isogram("Dermatoglyphics"))