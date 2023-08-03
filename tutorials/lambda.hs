-- Section 3.1

body sumSquare squareSum = if sumSquare > squareSum
		then sumSquare
		else squareSum

sumSquareOrSquareSum x y = body (x^2 + y^2) ((x+y)^2)


-- Section 3.3
doubleDouble x = (\dubs -> dubs*2) (x*2)

overwrite x = let x = 3
							in
								let x = 4
								in
									let x = 6
									in
										x

-- Overwrite lambda rewrite
overWrite x = (\x ->
							(\x ->
							 		(\x -> x) 5
								)3
							)2


-- Example
counter x = let x = x + 1
						in
							let x = x + 1
							in
								x

-- Setting x
x = 4

-- Looks at top-level definition
add1 y = y + x

-- Finds x first
add2 y = (\x -> y + x) 4

-- Ignores the arg in add3 and uses a lambda arg instead
add3 y = (\y ->
					(\x -> y + x) 1 ) 2
