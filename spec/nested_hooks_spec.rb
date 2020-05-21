RSpec.describe 'Nested Hooks' do
    before(:context) do
        puts 'Outer before context'
    end

    before(:example) do
        puts 'Outer before example'
    end

    it 'does basic math' do
        expect(1+1).to eq(2)
    end

    context 'With condition A' do
        before(:context) do
            puts 'Inner before context'
        end
    
        before(:example) do
            puts 'Inner before example'
        end
    end
end