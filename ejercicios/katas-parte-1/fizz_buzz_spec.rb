require 'rspec'
require_relative './fizz_buzz.rb'

describe FizzBuzz do

    it 'Deberia decir Buzz en 20' do
      bz = FizzBuzz.new()
      bz.kata2(20).should eq 'Buzz'
    end

 end

