class MyError < StandardError
end


class Currency
  def initialize(code, amount)
    symbol = Hash.new
    symbol = {"$" => :USD, "¥" => :JPY, "£" => :GBP, "€" => :EUR}
    @code = symbol[code]
    if (amount.to_f.to_s != amount) && (amount.to_i.to_s != amount)
      @amount = amount[1..-1]
    else @amount = amount.to_f
    end
  end

  def codify
    @code
  end

  def quantify
    @amount
  end

  def ==(other_currency)
    if @code == other_currency.codify && @amount == other_currency.quantify
      true
    end
  end

  def +(other_currency)
    if @code == other_currency.codify
      @amount + other_currency.quantify
    else raise MyError, "DifferentCurrencyCodeError"
    end
  end

  def -(other_currency)
    if @code == other_currency.codify
      @amount - other_currency.quantify
    else raise MyError, "DifferentCurrencyCodeError"
    end
  end



end
