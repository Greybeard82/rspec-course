RSpec.describe Array do
    subject(:sally) do
        [1, 2]
    end

    it 'Has a length of 2' do
        expect(sally.length).to eq(2)
        sally.pop()
        expect(sally.length).to eq(1)
    end

    it 'Sally is equal to original example' do
        expect(sally).to eq(subject)
    end
end