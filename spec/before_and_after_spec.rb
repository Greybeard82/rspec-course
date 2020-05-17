RSpec.describe 'before and after hooks' do
    before(:context) do
        puts 'happens before context'
    end

    after(:context) do
        puts 'happens after context'
    end
    
    before(:example) do
        puts 'Ill run before every example'
    end

    after(:example) do
        puts 'Ill run after every example'
    end

    it 'is just a random example' do
        expect(5 * 4).to eq(20)
    end
    it 'is another random example' do
        expect(3-2).to eq(1)
    end
end