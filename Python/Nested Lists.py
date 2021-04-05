#adds two lists and gets the secound lowest score

name = ['Harry','Berry','Tina','Akriti','Harsh']
score = [5, 37.21, 37.21, 37.23, 41, 39]
both = [[name[0], score[1]], [name[1], score[2]], [name[2], score[3]], [name[3], score[4]], [name[4], score[5]]]

both.sort(key=lambda x:x[1])


print(both)

#new_input = set(input)
#new_input.remove(max(input))
#print("The secound larget value is", max(new_input))