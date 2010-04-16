# How many combinations of 1p, 2p, 5p, 10p, 20p, 50p, 1 pound, and 2 pound make 2 pounds in UK
class Problem31
	def TheAnswer()
		coins = Array.new(8)
		coins[0] = 200
		coins[1] = 100
		coins[2] = 40
		coins[3] = 20
		coins[4] = 10
		coins[5] = 4
		coins[6] = 2
		coins[7] = 1
	end
end

problem = Problem31.new
puts "The Answer Is: " + problem.TheAnswer.to_s