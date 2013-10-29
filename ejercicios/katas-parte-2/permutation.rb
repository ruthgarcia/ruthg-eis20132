class Permutacion

def permuta(cadena)
	@cadena=cadena
	pword = cadena.chars.to_a.permutation.to_a

	pword.each do |p|
	   @aux= p.join
	   puts @aux
	   
	end 
	return @aux
end

end
