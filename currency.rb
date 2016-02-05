class Currency
  def initialize(code, amount)
    @code = code
    @amount = amount
  end

  def codify
    @code
  end

  def quantify
    @amount
  end

  #def code_error
  #  puts "DifferentCurrencyCodeError"
  #end

  def ==(other_currency)
    if @code == other_currency.codify && @amount == other_currency.quantify
      true
    else #[@code, @amount] != monitize
      false
    end
  end




end
