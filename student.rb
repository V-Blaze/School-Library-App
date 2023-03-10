require_relative './person'

class Student < Person
  attr_reader :classroom, :parent_permission

  def initialize(age, name = 'Unknown', classroom = 'Null', parent_permission = 'true')
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def modify_classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
