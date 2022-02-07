module SavingsAccount
  PERCENT = 100
  def self.interest_rate(balance)
    case 
    when balance.negative?
      -3.213
    when balance >= 0 && balance < 1000
      0.5
    when balance >= 1000 && balance < 5000
      1.621
    when balance >= 5000
      2.475
    end
  end

  def self.annual_balance_update(balance)
    interest_rate = percent_interest_rate(balance)

    if balance.positive?
      interest_rate * balance + balance
    else
      balance - (interest_rate * balance)
    end
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
