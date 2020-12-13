class ProfessionalWrestler
    attr_reader :name, :finishing_move

    def initialize(name, finishing_move)
        @name= name
        @finishing_move = finishing_move
    end
end

RSpec.describe 'Have attributes matcher' do
    describe ProfessionalWrestler.new('Stone Cold Austin', 'Stunner') do
        it 'checks for object attribute and proper values' do
            expect(subject).to have_attributes(name: 'Stone Cold Austin')
            expect(subject).to have_attributes(name: 'Stone Cold Austin', finishing_move: 'Stunner')
        end

        #shortform

        it { is_expected.to have_attributes(name: 'Stone Cold Austin', finishing_move: 'Stunner')}
        it { is_expected.to have_attributes(name: "Stone Cold Austin") }
    end
end