RSpec.describe 'tisfy matcher' do
    subject {'racecara'}

    it 'is a palindrome' do
        expect(subject).to satisfy { |value| value == value.reverse}
    end

    # clearer option when the test isn't satisfied, it specifies in a more readable way what didn't pass the test

    it 'can accept a custom error message' do
        expect(subject).to satisfy('be a palindrome') do |value|
            value == value.reverse
        end
    end
end
