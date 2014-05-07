require 'titan'
require 'timecop'
require 'chronic'

describe Titan do

  before(:each) do
    Timecop.freeze(freeze_time)
    @titan = Titan.new('Abnormal', 8)
  end

  after do
    Timecop.return
  end

  # This value can be whatever, since these
  # tests are not time-sensitive.
  let(:freeze_time) { Time.now }

  subject { @titan }

  it { should respond_to(:t_type) }
  it { should respond_to(:t_size) }
  it { should respond_to(:active) }

  describe '#state' do

    context 'at 5am' do
      let(:freeze_time) { Chronic.parse('5am') }

      it 'should be seeking flesh' do
        expect(@titan.state).to eq('seeking')
      end
    end

    context 'at 4am' do
      let(:freeze_time) { Chronic.parse('4am') }

      it 'should remain dormant' do
        expect(@titan.state).to eq('dormant')
      end
    end
  end
end
