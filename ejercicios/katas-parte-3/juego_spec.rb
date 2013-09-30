require 'rspec'
require_relative './juego.rb'

describe 'Ahorcado' do

	describe 'modelo del juego' do
		subject { @juego = Ahorcado.new }
	end

	before (:each) { @juego = Ahorcado.new }
	

	describe 'palabra' do

		it 'deberia decir hola cuando la palabra es hola' do
			@juego.palabra 'hola'
			@juego.palabra('hola').should eq 'hola'
		end
	end


	describe 'longitud_palabra' do

		it 'deberia decir 5 si la palabra es cosas' do
			@juego.palabra 'cosas'
			@juego.longitud_palabra().should eq 5
		end
	end

	describe 'dibujar_posiciones' do

		it 'deberia dibujar ---- cuando palabra es hola' do
			@juego.palabra 'hola'
			@juego.dibujar_posiciones().should eq '----'
		end
		it 'deberia dibujar ------ cuando palabra es querer' do
			@juego.palabra 'querer'
			@juego.dibujar_posiciones().should eq '------'
		end
	end

	describe 'descubriendo_letras' do

		it 'deberia dibujar -o-- cuando palabra es hola y la letra es o' do
			@juego.palabra 'hola'
			@juego.dibujar_posiciones()
			@juego.descubriendo_letras('o').should eq '-o--'
		end
		it 'deberia dibujar -a-a-- cuando palabra es zapato y la letra es a' do
			@juego.palabra 'zapato'
			@juego.dibujar_posiciones()
			@juego.descubriendo_letras('a').should eq '-a-a--'
		end
		it 'deberia dibujar eee cuando palabra es eee y la letra es e' do
			@juego.palabra 'eee'
			@juego.dibujar_posiciones()
			@juego.descubriendo_letras('e').should eq 'eee'
		end
	end

	describe 'errores' do
		it 'deberia decir 1: Ruth  si contiene la letra R' do
			@juego.palabra 'Ruth'
			@juego.errores('R').should be 1
		end

		it 'deberia decir 1: Ruth no contiene la letra l' do
			@juego.palabra 'Ruth'
			@juego.errores('l').should be 1
		end
	end
	
	describe 'ganar_o_perder' do
		it 'deberia decir true: Ruth  si contiene la palabra Ruth' do
			@juego.palabra 'Ruth'
			@juego.dibujar_posiciones()
			@juego.descubriendo_letras('R')
			@juego.descubriendo_letras('u')
			@juego.descubriendo_letras('t')
			@juego.descubriendo_letras('h')
			@juego.ganar_o_perder().should eq true

		end
		it 'deberia decir false: Ruth  no contiene la palabra casa' do
			@juego.palabra 'Ruth'
			@juego.dibujar_posiciones()
			@juego.descubriendo_letras('c')
			@juego.descubriendo_letras('a')
			@juego.descubriendo_letras('s')
			@juego.descubriendo_letras('a')
			@juego.ganar_o_perder().should eq false

		end

	end
	
end
