require './decorate'

class TrimmerDecorator < Decorate
  def correct_name
    decorate.correct_name.lenght <= 10 ? decorate.correct_name : decorate.correct_name[0..9]
  end
end
