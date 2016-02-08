class DifferentCurrencyCodeError < StandardError
end

class Currency
  def initialize(amount, code = nil)
    symbol = Hash.new
    symbol = {"$" => :USD, "¥" => :JPY, "£" => :GBP, "€" => :EUR}

    if code
      @code = code
      @amount = amount
    else
      @code = symbol[(amount[0])]
      @amount = amount[1..-1].to_f
    end
  end

  def codify
    @code
  end

  def quantify
    @amount
  end

  def to_s
    "#{@amount} #{@code}"
  end

  def ==(other_currency)
    if @code == other_currency.codify && @amount == other_currency.quantify
      true
    end
  end

  def +(other_currency)
    if @code == other_currency.codify
      Currency.new(@amount + other_currency.quantify, @code)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def -(other_currency)
    if @code == other_currency.codify
      Currency.new(@amount - other_currency.quantify, @code)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def *(factor)
    Currency.new(@amount * factor.to_f, @code)
  end
end
