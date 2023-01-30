class Person
  def initialize(age, _name = 'Unknown', _parent_permission: true)
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age

  attr_reader :id

  def can_use_services?
    return unless is_of_age? || @parent_permission

    true
  end

  private

  def of_age?
    return true if @age >= 18
    
    false
  end
end
