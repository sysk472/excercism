class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
    'Unsupported operation'
  end

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)

    unless first_operand.instance_of?(Integer) && second_operand.instance_of?(Integer)
      raise ArgumentError
    end

    return "Division by zero is not allowed." if second_operand&.zero? && operation == "/"

    result = first_operand.public_send(operation, second_operand)

    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end
