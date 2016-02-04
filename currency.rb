class Currency
  def initialize(code, amount)
    @code = code
    @amount = amount
  end

  def ==(monitize)
    if [@code, @amount] == monitize
      true
    else #[@code, @amount] != monitize
      false
  end

  def monitize
    [@code, @amount]
  end

end
