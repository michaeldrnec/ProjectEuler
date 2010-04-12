class Problem22
	def TheAnswer()
		return 0
	end
	
	def ReadFile()
		begin
			file = File.New("names.txt", "r")
	#		line = file.gets
			file.close
	#		line.tr('"', '')
	#		return line
		rescue => err
			puts "Exception: #{err}"
			err
		end
		return "else"
	end
end

problem = Problem22.new
puts "The answer is: " + problem.ReadFile