require_relative '../rental'
require_relative '../student'
require_relative '../book'

describe Rental do
  before :each do
    @person = Person.new(12, 'Valentine', true)
    @book = Book.new('Chinue Achebe', 'Things fall apart')
    @rental = Rental.new(@book, @person, '08/02/23')
  end

  describe '#new' do
    it 'Creates a rental instance' do
      expect(@rental).to be_instance_of(Rental)
    end

    it 'Adds rental to book instance' do
      expect(@book.rentals.length).to eql(1)
    end

    it 'Adds rental to person instance' do
      expect(@person.rentals[0]).to eql(@rental)
    end
  end
end
