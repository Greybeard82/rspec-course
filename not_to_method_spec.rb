RSpec.describe 'not_to method' do
    
    it 'checks that two values do not match' do
        # sexpect(5).not_to eq(5)
        
        expect('Hello').not_to eq('hello')    
    end
end