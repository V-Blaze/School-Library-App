require './rental'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(author, title)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    Rental.new(self, person, date)
  end
end
