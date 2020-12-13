RSpec.describe '' do
    describe 'caterpillar' do
        it 'should check for a substring at the beginning or end' do
            expect(subject).to start_with('cat')
            expect(subject).to end_with('pillar')
        end

            # attention! they're both case sensitive!

            #short form

        it { is_expected.to start_with('cat') }

        it { is_expected.to end_with('pillar') }
    end

    describe [:a, :b ,:c , :d] do
        it 'should check for elements at the beginning of the array' do
            expect(subject).to start_with(:a)
            expect(subject).to start_with(:a, :b)
            expect(subject).to start_with(:a, :b, :c)
        end
        
        # shortform
        
        it { is_expected.to start_with(:a, :b)}
    end
end