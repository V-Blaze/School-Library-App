require 'json'
require_relative '../rental'
# require_relative '../person'

module PreserveRentals
  FILE_NAME = './database/rentals.json'.freeze

  def save_rentals
    arr = []
    @rentals.each do |rental|
      arr << {
        date: rental.date,
        book: @books.index(rental.book),
        person: @people.index(@people.find { |p| p[:data].id == rental.person.id })
      }
    end
    File.write(FILE_NAME, JSON.generate(arr))
  end

  def read_rentals_file
    return unless File.exist?(FILE_NAME) && File.exist?('./database/people.json')

    rentals_arr = []
    content = JSON.parse(File.read(FILE_NAME))
    content.each do |item|
      rentals_arr << Rental.new(@books[item['book'].to_i], @people[item['person'].to_i][:data], item['date'])
    end
    rentals_arr
  end
end
