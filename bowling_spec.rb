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

  context 'given 1-' do
    let(:result) { '1-' }
    it { should eq 1 }
  end

  context 'given 1/' do
    let(:result) { '1/' }
    it { should eq 10 }
  end

  context 'given 1/11' do
    let(:result) { '1/11' }
    it { should eq 13 }
  end

end
