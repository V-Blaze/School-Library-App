require_relative '../teacher'

describe Teacher do
  describe '#new' do
    it 'Creates a teacher instance' do
      teacher = Teacher.new(22, 'Code', 'micro', true)

      expect(teacher).to be_instance_of(Teacher)
    end
  end

  describe '#can_use_services' do
    it 'returns true' do
      teacher = Teacher.new(22, 'Code', 'micro', true)

      expect(teacher.can_use_services?).to be_truthy
    end
  end
end
