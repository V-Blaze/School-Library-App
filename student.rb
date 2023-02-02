require './person'

class Student < Person
  attr_reader :classroom

  def initialize(age, _name = 'Unknown', _parent_permission = true, classroom = nil)
    super(age, _name, _parent_permission)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
