class Tennis

attr_accessor :rol, :puntos, :juegos, :sets

	def initialize
		@rol= ""
		@puntos=0
		@juegos=0
		@sets=0
	end

	def reiniciar
		initialize
	end

	def rolesSaque(jugador1,jugador2)
		rand=rand(2)
		if(rand==0)
		jugador1.rol="Sacador"
		jugador2.rol="Contestador"
		elsif(rand==1)
		jugador2.rol="Sacador"
		jugador1.rol="Contestador"
		end
		
		puts "Jugador 1 es: "+jugador1.rol
		puts "Jugador 2 es: "+jugador2.rol
	end

	def contestadoONo
		rand=rand(2)
		if(rand==0) #No contestado
			puts "Tiro no contestado"
		elsif(rand==1)#Si contestado
			puts "Tiro contestado"
		end	
		return rand	
	end

	def cambiarRoles(jugador1,jugador2)
		aux=jugador1.rol
		jugador2.rol=jugador1.rol
		jugador1.rol=aux
	end

	def calcularPuntos(jugador1,jugador2)
		if(jugador1.rol=="Sacador")
			if(contestadoONo==0)
				jugador1.puntos=+1
	puts "El jugador 1 tiene #{jugador1.puntos} PUNTO/S ganado/s: MARCADOR "+jugador1.poniendoPuntaje+" - "+jugador2.poniendoPuntaje
			end
		end

		if(jugador2.rol=="Sacador")
			if(contestadoONo==0)
				jugador2.puntos=+1
	puts "El jugador 2 tiene #{jugador2.puntos} PUNTO/S ganado/s: MARCADOR "+jugador1.poniendoPuntaje+" - "+jugador2.poniendoPuntaje
			end
		end
	end



	def calcularJuegos(jugador1,jugador2)
		if(jugador1.puntos>=4 && (jugador1.puntos-jugador2.puntos>=2))
			jugador1.juegos+=1
			jugador1.puntos=0
			jugador2.puntos=0
		puts "El jugador 1 tiene #{jugador1.juegos} JUEGOS ganados"
		end
		
		if(jugador2.puntos>=4 && (jugador2.puntos-jugador1.puntos>=2))
			jugador2.juegos+=1
			jugador1.puntos=0
			jugador2.puntos=0
	        puts "El jugador 2 tiene #{jugador2.juegos} JUEGOS ganados"
		end
	
	end

	def calcularSets(jugador1,jugador2)
		if (jugador1.juegos>=6)
			jugador1.sets+=1
			puts "El jugador 1 tiene #{jugador1.sets} SETS ganados"
		end
		if (jugador2.juegos>=6)
			jugador2.sets+=1
			puts "El jugador 2 tiene #{jugador2.sets} SETS ganados"

		end
	
	end

	def calcularGanador(jugador1,jugador2)
		if(jugador1.sets>=2)
			puts "El jugador 1 es el GANADOR"
			ganador=true
			jugador1.initialize
			return ganador
		elsif(jugador2.sets>=2)
			@sets = 0
			jugador1.sets = 0
			jugador2.sets = 0
			puts "El jugador 2 es el GANADOR"
			jugador1.rol = jugador2.rol = " "
			jugador1.puntos = jugador2.puntos = 0
			jugador1.juegos = jugador2.juegos = 0			
			ganador=true
			return ganador
		end
	end

	def poniendoPuntaje()
		if(@puntos==0)
			puts "Love"
			return "Love"
		end
		if(@puntos==1)
			puts "Fifty"
			return "Fifty"
		end
		if(@puntos==2)
			puts "Thirty"
			return "Thirty"
		end
		if(@puntos==3)
			puts "Forty"
			return "Forty"
		end
		
	end


end


ganador=false
jugador1 = Tennis.new()
jugador2 = Tennis.new()

Tennis.new.rolesSaque(jugador1,jugador2)

while ganador == false do

puts "Jugador 1 es: " + jugador1.rol
puts "JUgador 2 es: " + jugador2.rol

Tennis.new.calcularPuntos(jugador1,jugador2)
Tennis.new.calcularJuegos(jugador1,jugador2)
Tennis.new.calcularSets(jugador1,jugador2)

ganador = Tennis.new.calcularGanador(jugador1,jugador2)
puts "Mostrando Marcadores en 0"

puts jugador1.sets
puts jugador1.puntos
puts jugador1.juegos

puts jugador2.sets
puts jugador2.puntos
puts jugador2.juegos

Tennis.new.cambiarRoles(jugador1,jugador2)

end


