
class Converter
  def initialize({code1 => rate1, code2 => rate2})
    @code1 = code1
    @rate1 = rate1
    @code2 = code2
    @rate2 = rate2
  end
end


#don't create a hash that contains static exchange rates.
#Instead, the rates should be passed in as parameters
#for creating a new object in the class.
