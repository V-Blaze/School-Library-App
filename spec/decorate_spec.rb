require_relative '../decorator'
require_relative '../trimmer_decorate'
require_relative '../captalize_decorate'
require_relative '../nameable'

describe Decorator do
  before(:all) do
    @person = Person.new(12, 'Valentine', true)
    @decorator = Decorator.new(@person)
  end
  describe '#new' do
    it 'Creates an be new Decorate instance' do
      expect(@decorator).to be_instance_of(Decorator)
    end
  end
  describe '#correct_name' do
    it 'It returns the persons class name' do
      expect(@decorator.correct_name).to eql('Valentine')
    end
  end
end

describe TrimmerDecorator do
  before(:all) do
    @person = Person.new(12, 'Valentine Blaze', true)
    @trimmer_decorate = TrimmerDecorator.new(@person)
  end
  describe '#correct_name' do
    it 'It returns only 10 characters from the person name' do
      expect(@trimmer_decorate.correct_name).to eql('Valentine ')
    end
  end
end

describe CapitalizeDecorator do
  before(:all) do
    @person = Person.new(12, 'Valentine Blaze', true)
    @captalize_decorate = CapitalizeDecorator.new(@person)
  end
  describe '#correct_name' do
    it 'It returns the persons name capitalized' do
      expect(@captalize_decorate.correct_name).to match('Valentine blaze')
    end
  end
end

describe CapitalizeDecorator do
  describe '#correct_name' do
    nameable = Nameable.new

    it 'It raises NotImplementedError error' do
      expect { nameable.correct_name }.to raise_error(NotImplementedError)
    end
  end
end
