class Problem4
  def IsPalindrome(number)
    return (number.to_s.reverse == number.to_s)
  end
  
  def TheAnswer()
	leftSide = 999
	rightSide = 999
	while (leftSide > 0) do
		mult = leftSide * rightSide
		if (IsPalindrome(mult))
			return mult
		end
		temp = leftSide
		leftSide = rightSide
		rightSide = temp
		leftSide = leftSide - 1
	end
	return 0
  end
end

class Test
  def ShouldBePalindrome(tester)
    if (tester.IsPalindrome(12321))
      puts "ShouldBePalindrome: PASS"
    else
      puts "ShouldBePalindrome: FAIL"
    end
  end
  
  def ShouldNotBePalindrome(tester)
    if (tester.IsPalindrome(12345))
      puts "ShouldNotBePalindrome: FAIL"
    else
      puts "ShouldNotBePalindrome: PASS"
    end
  end
end

problem = Problem4.new
myTests = Test.new
myTests.ShouldBePalindrome(problem)
myTests.ShouldNotBePalindrome(problem)
puts "The Answer Is:" + problem.TheAnswer().to_s
