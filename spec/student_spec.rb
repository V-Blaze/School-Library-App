require_relative '../student'

describe Student do
  describe '#new' do
    it 'Creates a student instance' do
      student = Student.new(22, 'Code', 'micro', true)

      expect(student).to be_instance_of(Student)
    end
  end

  describe '#age' do
    it 'Has the correct age' do
      student = Student.new(22, 'Code', 'micro', true)

      expect(student.age).to eql(22)
    end
  end

  describe '#modify_classroom' do
    it 'exists' do
      student = Student.new(22, 'Code', 'micro', true)

      expect(student).to respond_to(:modify_classroom)
    end
  end

  describe '#play_hooky' do
    it 'exists' do
      student = Student.new(22, 'Code', 'micro', true)

      expect(student).to respond_to(:play_hooky)
    end
  end
end
