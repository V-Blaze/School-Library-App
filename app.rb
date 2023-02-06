require './book'
require './student'
require './teacher'
require './rental'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def create_student(age, name, parent_permission)
    classroom = 'Null'
    @people << { type: 'Student', data: Student.new(age, name, classroom, parent_permission) }
  end

  def create_teacher(age, name, spec)
    @people << { type: 'Teacher', data: Teacher.new(age, spec, name) }
  end

  def create_person
    print 'Do you want to create a Student (1) or a teacher (2)?:'

    input = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    print 'Age: '
    age = gets.chomp.to_i

    if input == 1
      print 'Has parent permission? y/n :'
      permission = gets.chomp

      create_student(age, name, permission == 'y')
    else
      print 'Enter Teachers specialization:'
      spec = gets.chomp

      create_teacher(age, name, spec)
    end

    puts input == 1 ? 'Student created Successfuly!' : 'Teacher created Successfuly!'
  end

  def add_book(title, author)
    @books << Book.new(title, author)
  end

  def create_book
    puts 'Enter book Title:'
    title = gets.chomp
    puts 'Enter authors name'
    author = gets.chomp
    add_book(title, author)

    puts 'Book created'
  end

  def add_rental(book_id, person_id, date)
    person = find_person(person_id)

    @rentals << Rental.new(@books[book_id], person[:data], date)
  end

  def create_rental
    puts 'Select a Books from the book list below: '
    list_books

    book_id = gets.chomp.to_i

    puts "Select a person from the list below: Enter the person's ID: "
    list_people

    person_id = gets.chomp.to_i

    print 'Enter Date: '
    date = gets.chomp

    add_rental(book_id - 1, person_id, date)

    puts 'Rental created Suceefully!!'
  end

  def list_rentals
    list_people
    puts "Enter a person's ID: "

    id = gets.chomp.to_i

    list_person_rentals(id)
  end

  def list_people
    if @people.empty?
      puts 'You have not Created any Person object'
    else
      @people.each_with_index do |p, id|
        index = id + 1
        puts "#{index} - [#{p[:type]}] Name: #{p[:data].name} Age: #{p[:data].age} ID: #{p[:data].id}"
      end
    end
  end

  def list_books
    if @books.empty?
      puts "You haven't created any book yet"
    else
      @books.each_with_index do |book, id|
        index = id + 1
        puts "#{index} -- #{book.title}, #{book.author}"
      end
    end
  end

  def list_person_rentals(id)
    person = find_person(id)

    person[:data].rentals.each do |rental|
      puts "Date: #{rental.date}, Book: #{rental.book.title} written by: #{rental.book.author}"
    end
  end

  private

  def find_person(p_id)
    @people.find { |person| person[:data].id == p_id }
  end
end
