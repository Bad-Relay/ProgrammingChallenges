# This script give a value to each letter in a alphabet a = 1, b = 2, c = 3. Then it will return a word with the largest value.
def high(x):
    score = 0 #current score
    highscore = 0 #records the largest value in the string
    scoreword = "" #current word that is being scored.
    highscoreword = "" # The word with the highest value
    for i in range(0, len(x)):
        if x[i].isalpha(): #if the current character in the string is a letter
            score += ord(x[i]) - 96 #add the poostion in the alphabet to the current score
            scoreword += x[i] # adds the character to the current string
        else: #if a space happens check it see if it is a new highscore and reset the current variable
            if score > highscore: # if the score in the word is larger the highest score make that the new highscore
                highscore = score
                highscoreword = scoreword
            scoreword = "" #reset the current word for the new word
            score = 0 #reset the score for the new word

    else: #once the loop is finished check to see if the last word is the new high score
        if score > highscore:
            highscore = score
            highscoreword = scoreword
    return highscoreword #return the word with the most score

print(high('what time are we climbing up the volcano'))