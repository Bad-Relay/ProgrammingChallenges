#Takes a string and retuns a list with each character capitalize in a sequence.
def wave(people):
    result = []
    counter = 1
    people = people.lower() #makes the string lower case in the event of the string starting with a capital letter.
    for i in people: #run in each character in a string.
        if i.isspace() == False: #if the character is a space don't add it to the list
            result.append(people[0:counter-1]+i.capitalize()+ people[counter:])  #adds a string with the current character capitalize.
        counter += 1
    return result

print(wave("Two words"))