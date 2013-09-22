require 'rspec'
require_relative './permutation.rb'

describe Permutacion do

		describe 'permuta' do

		it 'Muestra permutaciones' do
		p = Permutacion.new()
		p.permuta('PALABRA').should eq 'ARBALAP'
		end
	end


end
