require 'practice'

RSpec.describe Practice do
  describe '#fib' do
    subject { described_class.new.fib(n) }

    context 'when n = 0' do
      let(:n) { 0 }

      it { is_expected.to eq(0) }
    end

    context 'when n = 1' do
      let(:n) { 1 }

      it { is_expected.to eq(1) }
    end

    context 'when n = 2' do
      let(:n) { 2 }

      it { is_expected.to eq(1) }
    end

    context 'when n = 3' do
      let(:n) { 3 }

      it { is_expected.to eq(2) }
    end

    context 'when n = 4' do
      let(:n) { 4 }

      it { is_expected.to eq(3) }
    end

    context 'when n = 5' do
      let(:n) { 5 }

      it { is_expected.to eq(5) }
    end

    context 'when n = 10' do
      let(:n) { 10 }

      it { is_expected.to eq(55) }
    end

    context 'when n = 36' do
      let(:n) { 36 }

      it 'should give the right answer' do
        is_expected.to eq(14930352)
      end

      it 'should run fast enough' do
        expect { described_class.new.fib(n) }.to perform_under(1).sec
      end
    end
  end
end
