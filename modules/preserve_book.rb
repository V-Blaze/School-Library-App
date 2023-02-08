require 'json'
require_relative '../book'

module PreserveBook
  FILE_NAME = './database/books.json'.freeze

  def save_books
    arr = []
    @books.each do |book|
      arr << {
        title: book.title,
        author: book.author
      }
    end
    File.write(FILE_NAME, JSON.generate(arr))
  end

  def read_book_file
    return unless File.exist?(FILE_NAME)

    book = []
    content = JSON.parse(File.read(FILE_NAME))
    content.each do |item|
      book << create_book_from_file(item['title'], item['author'])
    end
    book
  end

  def create_book_from_file(title, author)
    Book.new(title, author)
  end
end
