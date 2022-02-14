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
    new_balance_after_years(current_balance)
      .take_while { |new_balance| new_balance < desired_balance }
      .count + 1
  end

  def self.percent_interest_rate(balance)
    interest_rate(balance) / PERCENT
  end

  def self.new_balance_after_years(balance)
    Enumerator.new do |y|
      loop do
        balance = annual_balance_update(balance)
        y << balance
      end
    end
  end
end
