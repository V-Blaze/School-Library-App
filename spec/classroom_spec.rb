require_relative '../classroom'

describe Classroom do
  describe '#new' do
    it 'Creates a classroom instance' do
      classroom = Classroom.new('ruby')

      expect(classroom).to be_instance_of(Classroom)
    end
  end

  describe '#add_student' do
    it 'exists' do
      classroom = Classroom.new('ruby')

      expect(classroom).to respond_to(:add_student)
    end
  end
end
