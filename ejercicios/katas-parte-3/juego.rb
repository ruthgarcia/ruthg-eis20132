class Ahorcado

	def palabra(palabra)
		@palabra = palabra
		@aciertos = 0
		@errores = 0
		@rayitas = ''
	return palabra
	end

	def longitud_palabra
		return @palabra.length
	end
	
	def dibujar_posiciones
	      for i in(0..@palabra.length-1)
		 @rayitas[i] = '-'	
	      end
		return @rayitas
	end

	def errores(letra)
		if (@palabra.include?letra)
			@aciertos +=1
			return @aciertos
		else
			@errores +=1
			return @errores
		end
		 
	end


	def descubriendo_letras(letra)
		
		for i in(0..@palabra.length-1)
			if @palabra[i] == letra
				@rayitas[i]=letra
			end
	        end
	return @rayitas
		
	end

	def ganar_o_perder
		if (@palabra==@rayitas)	
		return true
		else		
		return false
		end
		
	end


end
