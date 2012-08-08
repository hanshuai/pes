primes = sieve [2..]
	where sieve (x:xs) = x : sieve(filter (\y -> y `rem` x /= 0) xs)
factors x ps@(p:ps')
	| x < p = []
	| x `rem` p == 0 = p : factors (x `div` p) ps
	| otherwise = factors x ps'
main = print (maximum(factors 600851475143 primes))
