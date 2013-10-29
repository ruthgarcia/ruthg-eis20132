require 'rspec'
require_relative './tenis.rb'

describe Tennis do

    	 describe '	rolesSaque' do
		jugador1 = Tennis.new
		jugador2 = Tennis.new
		Tennis.new.rolesSaque(jugador1,jugador2)

		it '		Deberia tener un rol' do
		jugador1.rol.should_not == ''
		end

		it '		Deberia tener un rol' do
		jugador2.rol.should_not == ''
		end
   	 end

	describe '	contestadoONo' do
		it '		Deberia dar 1 o 0' do
			Tennis.new.contestadoONo.should be_between(0,1)
		end
	end

	describe '	def calcularPuntos' do
		jugador1 = Tennis.new
		jugador2 = Tennis.new
		jugador1.rol="Sacador"
		contestadoONo=0
		
		it '		Deberia jugador1 != 0' do
			Tennis.new.calcularPuntos(jugador1,jugador2)
			jugador1.puntos.should be_between(0,1)
		end
		it '		Deberia jugador2 != 0' do
			jugador2.rol="Sacador"
			contestadoONo=0
			jugador2.puntos.should be_between(0,1)
		end
		
	end

	describe '	def calcularJuegos' do
		jugador1 = Tennis.new
		jugador2 = Tennis.new
		jugador1.puntos=6
		jugador2.puntos=4
		
		it '		Deberia jugador1 tener 1 juego ganado' do
			Tennis.new.calcularJuegos(jugador1,jugador2)
			jugador1.juegos.should_not eq 0
		end
		it '		Deberia jugador2 no tener juego ganado' do
			Tennis.new.calcularJuegos(jugador1,jugador2)
			jugador2.juegos.should eq 0
		end
		
	end

	describe '	calcularSets	' do
		jugador1 = Tennis.new
		jugador2 = Tennis.new
		jugador1.juegos=6
		jugador2.juegos=4
		
		it '		Deberia jugador1 tener 1 set ganado' do
			Tennis.new.calcularSets(jugador1,jugador2)
			jugador1.sets.should eq 1
		end
		it '		Deberia jugador2 no tener set ganado*' do
			Tennis.new.calcularSets(jugador1,jugador2)
			jugador2.sets.should eq 0
		end
		
	end

	describe '	def calcularGanador ' do
		jugador1 = Tennis.new
		jugador2 = Tennis.new
		jugador1.sets=2
		jugador2.sets=1
		
		it '		Deberia jugador1 y jugador2 juegos en 0	' do
			Tennis.new.calcularSets(jugador1,jugador2)
			jugador1.juegos.should eq 0
			jugador2.juegos.should eq 0
		end
		it '		Deberia jugador1 y jugador 2 puntos en 0' do
			Tennis.new.calcularSets(jugador1,jugador2)
			jugador1.puntos.should eq 0
			jugador2.puntos.should eq 0
		end
		
	end

	describe '	def poniendoPuntaje ' do
		jugador1 = Tennis.new
		jugador2 = Tennis.new
		
		it '		Deberia no ser nulo' do
			Tennis.new.poniendoPuntaje()
			jugador1.puntos.should_not eq nil
			jugador2.puntos.should_not eq nil
		end
				
	end

	

	
end
 


