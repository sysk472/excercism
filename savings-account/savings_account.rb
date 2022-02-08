module SavingsAccount
  PERCENT = 100
  def self.interest_rate(balance)
    return -3.213 if balance.negative?
    return 0.5 if (0...1000).include?(balance)
    return 1.621 if (1000...5000).include?(balance)

    2.475
  end

  def self.annual_balance_update(balance)
    interest_rate = percent_interest_rate(balance)
    interest = balance.abs * interest_rate
    balance + interest
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    profit_per_year = annual_balance_update(current_balance)
    years = 1
    while profit_per_year < desired_balance
      profit_per_year = annual_balance_update(profit_per_year)
      years += 1
    end
    years
  end

  def self.percent_interest_rate(balance)
    interest_rate(balance) / PERCENT
  end
end
