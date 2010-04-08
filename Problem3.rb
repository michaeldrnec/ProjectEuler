class Problem3
	def AmIPrime(theNumber)
		amIDone = false
		divisor = theNumber - 1
		while (amIDone == false) do
			if (divisor == 1)
				return divisor
			else
				if (theNumber % divisor == 0)
					if (FindLargestFactorOfPrime(divisor) == 1)
						return divisor
					end
				end
			end
			divisor = divisor - 1
		end
		return divisor
	end
	
	def FindLargestFactorOfPrime(theNumber)
		amIDone = false
		divisor = 1
		candidate = 2
		tempNumber = theNumber
		while (amIDone == false) do
			if (candidate >= tempNumber)
				return divisor
			else
				if (tempNumber % candidate == 0)
					if (AmIPrime(candidate) == true)
						tempNumber = tempNumber / candidate
					end
				end
			end
		end
	end
	
end

problem = Problem3.new
puts "The Answer Is:"
puts problem.FindLargestFactorOfPrime(600851475143)