require 'titan'
require 'timecop'
require 'chronic'

describe Titan do
  before(:each) do
    @titan = Titan.new('Abnormal', 8)
  end

  subject { @titan }

  it { should respond_to(:t_type) }
  it { should respond_to(:t_size) }
  it { should respond_to(:active) }

  describe '#state' do
    before(:each) do
      @titan = Titan.new('Abnormal', 8)
    end

    it 'should be seeking flesh' do
      Timecop.freeze(Chronic.parse('5am')) do
        expect(@titan.state).to eq('seeking')
      end
    end

    it 'should remain dormant' do
      Timecop.freeze(Chronic.parse('4am')) do
        expect(@titan.state).to eq('dormant')
      end
    end
  end
end
