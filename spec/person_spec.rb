require_relative '../person'

describe Person do
    describe '#new' do
        it 'Creates a person instance' do
            person = Person.new(12, 'Valentine', true)

            expect(person).to be_instance_of(Person)
        end
    end

    describe '#Person instance methods' do
        before (:all) do
            @person = Person.new(12, 'Valentine', true)
        end

        context 'Correct name method' do
            it 'Returns the correct persons name' do

                expect(@person.name).to eql('Valentine')
            end
        end
        context 'Can use service method' do
            it 'Return true if a person permission is true' do

                expect(@person.can_use_services?).to be_truthy
            end
        end
    end
end