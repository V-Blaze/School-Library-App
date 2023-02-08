require 'json'
require_relative '../person'
require_relative '../teacher'
require_relative '../student'

module PreservePeople
  FILE_NAME = './database/people.json'.freeze

  def save_people
    arr = []
    @people.each do |person|
      arr << if person[:type] == 'Teacher'
               { name: person[:data].name,
                 age: person[:data].age,
                 specialization: person[:data].specialization }
             else
               { name: person[:data].name,
                 age: person[:data].age,
                 permission: person[:data].parent_permission }
             end
    end
    File.write(FILE_NAME, JSON.generate(arr))
  end

  def read_people_file
    return unless File.exist?(FILE_NAME)

    people_arr = []
    content = JSON.parse(File.read(FILE_NAME))
    content.each do |item|
      people_arr << if item['specialization']
                      { type: 'Teacher', data: Teacher.new(item['name'], item['age'], item['specialization']) }
                    else
                      { type: 'Student', data: Student.new(item['name'], item['age'], item['permission']) }
                    end
    end

    people_arr
  end
end
