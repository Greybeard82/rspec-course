RSpec.describe 'include matcher' do
    describe 'hot chocolate' do
        it 'checks for substring inclusion' do
            expect(subject).to include('choc')
            expect(subject).to include('late')
            expect(subject).to include('cola')
        end
        
        it {is_expected.to include('hot')}
    end
    
    describe [10, 20, 30] do
        it 'checks inclusion in the array, regardless of order' do
            expect(subject).to include(10)
            expect(subject).to include(10, 20)
        end
        
        it {is_expected.to include(20, 10, 30)}
        
    end
    
    describe ({a: 2, b: 4}) do
        it 'can check for a key existence' do
            expect(subject).to include(:a)
            expect(subject).to include(:a, :b)
        end
        
        
        it 'can check for a key: value pair' do
            expect(subject).to include(a: 2)
        end

        it {is_expected.to include(a: 2)}
    end
end
