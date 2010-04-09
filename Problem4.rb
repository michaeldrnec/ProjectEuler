class Problem4
  def isPalindrome(number)
    return true
  end
end

class Test
  def ShouldBePalindrome(tester)
    if (tester.isPalindrome(12321))
      puts "ShouldBePalindrome: PASS"
    else
      puts "ShouldBePalindrome: FAIL"
    end
  end
  
  def ShouldNotBePalindrome(tester)
    if (tester.isPalindrome(12345))
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
puts "The Answer Is:"
