RSpec.describe 'change matcher' do
    subject { [1, 2, 3] }

    # one method is change{} from... to.... but it's not reliable because it depends on the subject not changing

    it 'checks that a method changes object state' do
        expect{subject.push(4)}.to change { subject.length}.from(3).to(4)     
    end

    # another way, using "by", which is independant of changes to the subject

    it 'checks that a method changes object state' do
        expect{subject.push(4)}.to change { subject.length }.by(1)     
    end

    it 'also accepts negative arguments' do
        expect{subject.pop()}.to change { subject.length}.by(-1)
    end

end