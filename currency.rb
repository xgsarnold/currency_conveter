class Currency
  def initialize(code, amount)
    @code = code
    @amount = amount
  end

  def ==(other_money)
    if [@code, @amount] == other_money.monitize
      true
    else #[@code, @amount] != monitize
      false
    end
  end

  def monitize
    [@code, @amount]
  end

end
