
#This script will take in the number of angles and then return the number of sides and the degree of each angle.
def describe_the_shape(angles):
    # get the sum of all angles
    total_degree = (angles - 2) * 180
    # get the degree of each angle
    degrees = int(total_degree/angles)
    # error checking if it is a dot
    if angles <= 2:
        an = "this will be a line segment or a dot"
    else:
        #Add the result to the a variable and return it
        an ="This shape has " + str(angles) + " sides and each angle measures " + str(degrees)
    return an

print(describe_the_shape(6))