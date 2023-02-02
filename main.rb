#!/usr/bin/env ruby
require "./app"

def welcome
    puts "Welcome to the School Library App"
end



def create_book(library)
    puts "Enter book Title:"
    title = gets.chomp
    puts "Enter authors name"
    author = gets.chomp
    library.add_book(title, author)

    puts "Book created"
    user_choice(library)
end


def list_books(library)
    library.list_books

    user_choice(library)
end

def list_options
    prompt = "\n Please choose an option by entering a number:
    1 - List all Books
    2 - List all people
    3 - Create a person
    4 - Create a book
    5 - Create a rental
    6 - List all rentals for a given person id
    7 - Exit!
    "
    puts prompt
end

def user_choice(library)
    list_options
    choice = gets.chomp.to_i

    case choice
    when 1
        list_books(library)
    when 2
        list_people(library)
    when 3
        create_person(library)
    when 4
        create_book(library)
    when 5
        create_rental(library)
    when 6
        list_rentals(library)
    end

    # Exit
    puts "Thanks for for using this App" 

end

def main
    library = App.new
    user_choice(library)
end


welcome
main