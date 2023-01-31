require './decorate'

class CapitalizeDecorator < Decorate
  def correct_name
    decorate.correct_name.captalize
  end
end
