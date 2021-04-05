#This script counts the number duplicate characters(case insensitive) in a string
def duplicate_count(text):
    counting = 0
    lowertext = text.lower() #converts to a lower case string to make the function case insensitive
    counted = ""
    for i in lowertext:
        if lowertext.count(i) >= 2 and counted.count(i) == 0:# uses the count function to see if it's in the string and checks to see if it's been counted already
            counted += " ".join(i) #adds the character to the counted string to avoid being counted again
            counting += 1 #adds to the number of duplicate caharacters
    return counting

print(duplicate_count("aabBcde"))