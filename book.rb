class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(author, title)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(book)
    @rentals.push(book)
  end
end
