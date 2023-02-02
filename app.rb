require './book'
require './student'
require './teacher'

class App
    def initialize
        @books = []
        @people = []
    end


    def add_book(title,  author)
        @books << Book.new(title, author)
    end

    def list_people
        @people.each_with_index do |person, id|
            index = id + 1
            puts "#{index} - [#{person[:type]}] Name: #{person[:data].name} Age: #{person[:data].age} ID: #{person[:data].id}"
        end
    end

    def list_books
        @books.each_with_index do |book, id|
        index = id + 1
            puts "#{index} #{book.title}, #{book.author}"
        end
    end
end