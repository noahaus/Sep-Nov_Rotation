#Part 1 of creation of a time series with infection data
#generate list of unique years 
#author: Noah A. Legall

#load in the necessary data

#Take in arguements and save to variable filename
import sys # use to access arguments
import os # use in order to call commands from terminal script is called in
import re # regular expressions used to 

#read in file name i want to change
filename = sys.argv[1]

#read from the input file
file = open(filename, "r")

#create year_list, which will hold all the captured years in the uploaded string
#should be initialized as empty
year_list = []

#upload every year into the year_list variable
for line in file:
    #split the string and access the year portion
    split_string = line.split('_')
    year_list.append(split_string[0])

#change year_list into year set, which will make the list unique
#
year_set = set(year_list)
year_sorted = sorted(year_set)

for year in year_sorted:
    print(year)




