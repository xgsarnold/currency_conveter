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

  def convert(current_currency, requested_code)
    current_code = current_currency.codify
    if (@conversion_rates.include?(current_code)) && (@conversion_rates.include?(requested_code))
      exchange_rate = (@conversion_rates[requested_code] / @conversion_rates[current_code])
      new_currency = current_currency.quantify * exchange_rate
      Currency.new(new_currency, requested_code)
    else
      raise UnknownCurrencyCodeError
    end

  end
end
