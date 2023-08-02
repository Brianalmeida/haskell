doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber' x = ( if x > 100 then x else x*2) + 1

-- Creating a variable and giving it a string for value
lTT = "Watch me on YouTube!"

-- Create a list
myFirstList = [29,0,48,39]

-- Create a second list
mySecondList = [85,3,892,89,38]

-- Combine these two lists
combinedLists = myFirstList ++ mySecondList

-- This can be done with strings too
joinStrings = "hello" ++ " " ++ "world!"

-- And with letters to create words(strings)
letterStrings = ['h','i'] ++ " " ++ ['t','h','e','r','e']

-- Append a letter before a string with a ':'
appendLetter = 'A':" Small cat"

-- Texas range
-- Creating a new list starting from 3 to 68
myListSecond = [3..68]


-- Letter range
letterRange = ['a'..'z']
