fibs = 0 : 1 : next fibs
	where
		next (a : t@(b:_)) = (a + b) : next t
f2 (x:xs) | x <= 4000000 = x : f2 xs
		  | otherwise = []
f3 = filter even (f2 fibs)
-- main = print (filter (< 10) (take 1000 fibs))
main = print (sum f3)
