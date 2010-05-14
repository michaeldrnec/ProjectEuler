class Integer
	def sum_digits
		to_s.split("").inject(0) {|sum, n| sum + n.to_i}
	end
end

class String
	def sum_chars
		split("").inject(0) {|sum, n| sum + (n[0] - 64)}
	end
end

class Primes
	def GeneratePrimesToNumber(value)
		sieve = Array.new
		for i in (1..value)
			sieve << i
		end
		start = 2
		while (start * start <= value)
			current = start * start
			while (current <= value)
				sieve[current - 1] = 0
				current = current + start
			end
			start = start + 1
		end
		answers = Array.new
		for x in (2..sieve.length)
			if (sieve[x-1] != 0)
				answers << sieve[x-1]
			end
		end
		return answers
	end
end