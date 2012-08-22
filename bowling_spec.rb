require './bowling'

describe Bowling do
  describe "score" do
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
      pending 'do it later' do
        let(:result) { '1/11' }
        it { should eq 13 }
      end
    end
  end

  describe "parse" do
    subject { Bowling.parse result }
    context 'given 1-' do
      let(:result) { '1-' }
      it { should eq ['1-'] }
    end

    context 'given 1-11' do
      let(:result) { '1-11' }
      it { should eq ['1-', '11'] }
    end

    context 'given 1-11X' do
      let(:result) { '1-11X' }
      it { should eq ['1-', '11', 'X'] }
    end

  end
end

describe Bowling::Frame do
  describe "#initialize" do
    subject { Bowling::Frame.new(source) }
    context "given --" do
      let(:source) { '--' }
      its(:pins) { should == [0, 0] }
    end
    context "given 1-" do
      let(:source) { '1-' }
      its(:pins) { should == [1, 0] }
    end
    context "given 12" do
      let(:source) { '12' }
      its(:pins) { should == [1, 2] }
    end
    context "given X" do
      let(:source) { 'X' }
      its(:pins) { should == [10] }
    end
  end
end
