import Data.List


-- Section 4.1

--ifEvenInc n = if even n
--							then n + 1
--							else n
--
--ifEvenDouble n = if even n
--									then n * 2
--									else n
--
--ifEvenSquare n = if even n
--									then n^2
--									else n

-- A better way to write this
ifEven myFunction x = if even x
									then myFunction x
									else x

-- You can abstract this
inc n = n + 1
double n = n*2
square n = n^2
cube n = n^3

-- Using the same concept, but with first class functions
ifEvenInc n = ifEven inc n
ifEvenDouble n = ifEven double n
ifEvenSquare n = ifEven square n
ifEvenCube n = ifEven cube n


-- Custom sorting
users = ("Will", "John")


names = [("Joe", "John"),
					("Pat", "Barry"),
					("Peter", "David"),
					("Jan", "Fred")]


--compareLastNames name1 name2 = if lastName1 > lastName2
--															then GT
--															else if lastName1 < lastName2
--															then LT
--															else if firstName1 < firstName2
--															then LT
--															else EQ
--
--	where lastName1 = snd name1
--				lastName2 = snd name2
--				firstName1 = fst name1
--				firstName2 = fst name2


-- Address example
addressLetter name location = locationFunction name
	where locationFunction = getlocationFunction location


-- Add more information
sfOffice name = if lastName < "L"
								then nameText
										++ " - PO Box 1234 - San Francisco, CA, 94111"
								else nameText
										++ " - PO Box 1010 - San Francisco, CA, 94109"
	where lastName = snd name
				nameText = (fst name) ++ " " ++ lastName

nyOffice name = nameText ++ ": PO Box 938 - New York, NY, 10013"
	where nameText = (fst name) ++ " " ++ (snd name)

renoOffice name = nameText ++ " - PO Box 345 - Reno, NV 89523"
	where nameText = snd name


getLocationFunction location = case location of
	"ny" -> nyOffice
	"sf" -> sfOffice
	"reno" -> renoOffice
	_ -> (\name -> (fst name) ++ " " ++ (snd name))
