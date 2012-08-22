require './bowling'

describe Bowling do
  subject { Bowling.score result }
  context 'given --' do
    let(:result) { '--' }
    it { should eq 0 }
  end

  context 'given 11' do
    let(:result) { '11' }
    it { should eq 2 }
  end




end
