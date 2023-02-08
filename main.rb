require './app'

def process(choice, app)
  case choice
  when '1'
    app.list_books
  when '2'
    app.list_people
  when '3'
    app.create_person
  when '4'
    app.create_book
  when '5'
    app.create_rental
  when '6'
    app.list_rentals
  end
end

def exit(app)
  app.save_data
  puts 'Thanks for for using this App'
end

def main
  puts 'Welcome to the School Library App'
  app = App.new

  app.read_saved_data

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

    exit(app) if choice == '7'

    process(choice, app)
  end
end

main
