require 'string_calc'

describe StringCalc do
  context 'when empty string' do
    it 'should return zero' do
      expect(StringCalc.add('')).to eq(0)
    end
  end

  context 'when single number' do
    it 'should return identical' do
      expect(StringCalc.add('1')).to eq(1)
    end
  end

  context 'when adding two numbers' do
    it 'should return a sum' do
      expect(StringCalc.add('1,2')).to eq(3)
    end
  end

  context 'when adding a newline' do
    it 'should replace newline' do
      expect(StringCalc.add("1\n2,3")).to eq(6)
    end
  end

  context 'when ending in newline' do
    it 'should raise an error message' do
      expect { StringCalc.add("1,\n") }
      .to raise_error('ending in newline')
    end
  end

  context 'when adding custom delimiter' do
    it 'should support any delimiter' do
      custom_delimiters = [*(33..44), *(58..64)].map(&:chr).join
      custom_delimiters.each_char do |custom|
        expect(StringCalc.add("//#{custom}\n2#{custom}2")).to eq(4)
      end
    end
  end

  context 'when adding negative numbers' do
    it 'should raise an error message' do
      expect { StringCalc.add("-1\n2,3") }
      .to raise_error('negatives not allowed: -1')
    end
  end

  context 'when adding numbers above 1000' do
    it 'should ignore those numbers' do
      expect(StringCalc.add('2,1001')).to eq(2)
    end
  end
end
