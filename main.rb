require './app'

def main
  puts 'Welcome to the School Library App'
  library = App.new

  prompt = "\n Please choose an option by entering a number:
    1 - List all Books
    2 - List all people
    3 - Create a person
    4 - Create a book
    5 - Create a rental
    6 - List all rentals for a given person id
    7 - Exit!"

  choice = 0
  while choice != '7'
    puts prompt
    choice = gets.chomp

    case choice
    when '1'
      library.list_books
    when '2'
      library.list_people
    when '3'
      library.create_person
    when '4'
      library.create_book
    when '5'
      library.create_rental
    when '6'
      library.list_rentals
    when '7'
      # Exit
      puts 'Thanks for for using this App'
    end
  end
end

main
