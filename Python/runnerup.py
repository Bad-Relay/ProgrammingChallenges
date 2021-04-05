#see the secound highest value in a list

input = [2, 3, 6, 6, 5]

new_input = set(input)
new_input.remove(max(input))
print("The secound larget value is", max(new_input))
