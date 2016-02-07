class UnknownCurrencyCodeError < StandardError
end

class Currency_Converter
  def initialize({code1 => rate1, code2 => rate2})
    @code1 = code1
    @rate1 = rate1
    @code2 = code2
    @rate2 = rate2
  end

  def convert(Currency.new(amount, code))
    if @code = @code1
      Currency.new(@amount * @rate2, @code2)
    else
      raise UnknownCurrencyCodeError
    end
  end

  # dollars_to_yen = Currency_Converter.new(:USD => 1.0, :JPY => 120.0)
  # currency_converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)


  # end

  # def (:USD => 1.0, :JPY => 120).convert()


end


#don't create a hash that contains static exchange rates.
#Instead, the rates should be passed in as parameters
#for creating a new object in the class.
