class FizzBuzz
	
	def kata2(i)
		if((i % 3 == 0) && (i % 5 == 0))
    		puts "FizzBuzz"
		i="FizzBuzz"
		else 
			if (i % 5 == 0)
	    			puts "Buzz"
				i="Buzz"
			else
	
				if(i % 3 == 0)
	    				puts "Fizz"
					i="Fizz"
				else
					puts i
					
				end
			end
		end
	return i
	end
	
end

obj = FizzBuzz.new()

for i in(1..100)
	obj.kata2(i)
end


