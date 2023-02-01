class Rental
  attr_reader :person, :book
  attr_accessor :date

  def initialize(date, person, book)
    @date = date

    @person = person
    pesrson.rentals << self

    @book = book
    book.rentals << self
  end
end
