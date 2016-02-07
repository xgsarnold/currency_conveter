require './currency.rb'

class UnknownCurrencyCodeError < StandardError
end

class CurrencyConverter
  def initialize(conversion_rates)
    @conversion_rates = conversion_rates
  end

  def to_s
    "#{@conversion_rates}"
  end

  current_currency = Currency.new(amount, code)
  current_code = current_currency.code

  def convert(current_currency, requested_code)
    if @current_code == @conversion_rates[current_code.code]
      exchange_rate = @conversion_rates[requested_code]
      new_currency = current_currency.amount * exchange_rate
      Currency.new(new_currency, requested_code)
    else
      raise UnknownCurrencyCodeError
    end
  end
end


  # dollars_to_yen = Currency_Converter.new(:USD => 1.0, :JPY => 120.0)
  # currency_converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)


  # end

  # def (:USD => 1.0, :JPY => 120).convert()




#don't create a hash that contains static exchange rates.
#Instead, the rates should be passed in as parameters
#for creating a new object in the class.
