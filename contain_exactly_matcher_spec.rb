RSpec.describe 'The contain_exactly matcher' do
    subject {[1, 2, 3]}

    describe 'long form syntax' do
        it 'should check for the presence of all elements' do
            expect(subject).to contain_exactly(1, 2, 3)  #the order of the elements if irrelevant, it only checks if they're present in the array

        end
    end

    # shortform 

    
    it { is_expected.to contain_exactly(1, 2, 3) }
end