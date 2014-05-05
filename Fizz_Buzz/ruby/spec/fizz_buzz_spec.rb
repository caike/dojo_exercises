require 'fizz_buzz'

describe 'fizz_or_buzz' do
  context 'when multiples of none' do
    it 'should return multiple' do
      multiples = (1..100).select { |i| i % 3 != 0 && i % 5 != 0 }
      multiples.each do |multiple|
        expect(fizz_or_buzz(multiple)).to eq(multiple)
      end
    end
  end

  context 'when multiples of 3' do
    it 'should return "Fizz"' do
      multiples = (1..100).select { |i| i % 3 == 0 && i % 5 != 0 }
      multiples.each do |multiple|
        expect(fizz_or_buzz(multiple)).to eq('Fizz')
      end
    end
  end

  context 'when multiples of 5' do
    it 'should return "Buzz"' do
      multiples = (1..100).select { |i| i % 3 != 0 && i % 5 == 0 }
      multiples.each do |multiple|
        expect(fizz_or_buzz(multiple)).to eq('Buzz')
      end
    end
  end

  context 'when multiples of 3 & 5' do
    it 'should return "FizzBuzz"' do
      multiples = (1..100).select { |i| i % 3 == 0 && i % 5 == 0 }
      multiples.each do |multiple|
        expect(fizz_or_buzz(multiple)).to eq('FizzBuzz')
      end
    end
  end
end
