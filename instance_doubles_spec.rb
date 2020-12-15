class Person
    def a(seconds)
        sleep(seconds)
        "Hello"
    end
end

RSpec.describe Person do
    describe 'regular double' do
        it 'can implement any method' do
            person = double(a: "Hello", b: 20)
            expect(person.a).to eq("Hello")
        end
    end

    describe 'instance method' do
        it 'can only implement methods that are defined on the class' do
            # person = instance_double(Person, a: "Hello", b: 20) Commented, only use was to get the error from rspec saying there's 2 arguments
            
            person = instance_double(Person)
            allow(person).to receive(:a).with(3).and_return('Hello')
            expect(person.a(3)).to eq('Hello')
        end
    end
end