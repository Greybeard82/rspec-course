RSpec.describe Hash do #Important that it's not a string otherwise Ruby can't read it.
    
    it 'should start off empty' do
        puts subject
        puts subject.class
        expect(subject.length).to eq(0)  
        subject[:some_key] = 'Some Value'
        expect(subject.length).to eq(1)     
    end
    
    # Now, when subject is called again in another example, it'll not use the memoated example from above, it'll create a new example
    
    it 'should start another one' do
        expect(subject.length).to eq(0)
    end
    
end