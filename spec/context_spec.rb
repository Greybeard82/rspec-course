#Context and nested Describes

RSpec.describe '#even? method' do
    describe 'With even number' do
        it 'Should return true' do
            expect(4.even?).to eq(true)
        end
    end
    describe 'With uneven number' do
        it 'Should return false' do
            expect(5.even?).to eq(false)
        end
    end
end
